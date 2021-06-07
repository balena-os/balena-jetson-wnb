include balena-image.inc

IMAGE_FSTYPES_append = " hostapp-ext4"

check_size() {
    file_path=${1}
    [ -f "${file_path}" ] || bbfatal "Specified path does not exist: ${file_path}"
    file_size=$(ls -l ${file_path} | awk '{print $5}')
    part_size=${2}

    if [ "$file_size" -ge "$part_size" ]; then
        bbfatal "File ${file_path} too big for raw partition!"
    fi;
}

NVIDIA_PART_OFFSET_jetson-tx2="4097"
DEVICE_SPECIFIC_SPACE_jetson-tx2="49152"

do_image_balenaos-img_jetson-tx2[depends] += " tegra186-flash-dry:do_deploy"

device_specific_configuration_jetson-tx2() {
    partitions=$(cat ${DEPLOY_DIR_IMAGE}/tegra-binaries/partition_specification186.txt)
    start=${NVIDIA_PART_OFFSET}
    for n in ${partitions}; do
        part_name=$(echo $n | cut -d ':' -f 1)
        file_name=$(echo $n | cut -d ':' -f 2)
        part_size=$(echo $n | cut -d ':' -f 3)
        file_path=$(find ${DEPLOY_DIR_IMAGE}/bootfiles -name $file_name)
        end=$(expr ${start} \+ ${part_size} \- 1)
        parted -s ${BALENA_RAW_IMG} unit s mkpart $part_name ${start} ${end}
        check_size ${file_path} $(expr ${part_size} \* 512)
        dd if=$file_path of=${BALENA_RAW_IMG} conv=notrunc seek=${start} bs=512
        start=$(expr ${end} \+ 1)
    done

    idx=1
    while [ $idx -lt 24];
    do
        # parted sets type to Linux Filesystem (type 20 at 0x400) regardless of msftdata
        # flag toggle, therefore use sfdisk to set the partition type. Needs to be
        # done after all partitions are added
        echo 'type=11' | sfdisk -N ${idx} ${BALENA_RAW_IMG}
        idx=$(expr ${idx} \+ 1)
    done

    # another issue with parted is incorrect number of partition entries
    # in gpt header at position 0x250. Fix gpt header so it can be interpreted
    # by the first bootloaders
    sed -e 's/\s*\([\+0-9a-zA-Z]*\).*/\1/' << EOF | fdisk ${BALENA_RAW_IMG}
    x
    l
    28
    r
    w
EOF
}

