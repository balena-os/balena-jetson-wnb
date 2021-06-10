Change log
-----------

# v2.75.0+rev1
## (2021-06-07)

* Update balena-yocto-scripts from v1.8.0 to v1.11.0 [Alexandru Costache]

<details>
<summary> Update meta-balena from v2.58.6 to 2.75.0 [Alexandru Costache] </summary>

> ## meta-balena-2.75.0
> ### (2021-04-22)
> 
> * Update mobynit to the new multi-container hostOS specification [Alex Gonzalez]
> 
> ## meta-balena-2.74.0
> ### (2021-04-20)
> 
> * balena-engine: Update to 19.03.18 [Robert Günzler]
> 
> ## meta-balena-2.73.15
> ### (2021-04-20)
> 
> * modemmanager:u-blox-switch: Rework the u-blox modem switch to ECM mode [Florin Sarbu]
> 
> ## meta-balena-2.73.14
> ### (2021-04-19)
> 
> * device-progress: do not force an exit code [Matthew McGinn]
> 
> ## meta-balena-2.73.13
> ### (2021-04-19)
> 
> * add retries to status check [rcooke-warwick]
> 
> ## meta-balena-2.73.12
> ### (2021-04-16)
> 
> * meta-balena: rename resin-vars to balena-config-vars [Mark Corbin]
> 
> ## meta-balena-2.73.11
> ### (2021-04-16)
> 
> * patch: Add strict bootcount count condition [Vipul Gupta (@vipulgupta2048)]
> * patch: Reactivate Persistent Logging test [Vipul Gupta (@vipulgupta2048)]
> 
> ## meta-balena-2.73.10
> ### (2021-04-14)
> 
> * repo.yml: Move balena-supervisor reference to balena-os [Alex Gonzalez]
> 
> ## meta-balena-2.73.9
> ### (2021-04-14)
> 
> * Update balena-supervisor from v12.5.6 to v12.5.10 [Christina Wang]
> 
> ## meta-balena-2.73.8
> ### (2021-04-13)
> 
> * resin-mounts/etc-fake-hwclock: add dependency on resin-state services [Mark Corbin]
> 
> ## meta-balena-2.73.7
> ### (2021-04-13)
> 
> * fix udev test indentation [rcooke-warwick]
> * Added comments for easier debugging [rcooke-warwick]
> * Fix old tests + add new tests based on testlodge [rcooke-warwick]
> 
> ## meta-balena-2.73.6
> ### (2021-04-12)
> 
> * Add automated test checking for udev/resin_update_state_probe warnings [Michal Toman]
> * udev: Silence warnings from resin_update_state_probe [Michal Toman]
> 
> ## meta-balena-2.73.5
> ### (2021-04-06)
> 
> * Update balena-supervisor from v12.4.6 to v12.5.6 [Christina Wang]
> 
> ## meta-balena-2.73.4
> ### (2021-03-20)
> 
> * Add to persistent logging defn [Andrew Nhem]
> 
> ## meta-balena-2.73.3
> ### (2021-03-19)
> 
> * wifi: remove listed example as it's discontinued [Tomás Migone]
> 
> ## meta-balena-2.73.2
> ### (2021-03-17)
> 
> * hostapp-update: convert absolute symlinks to relative [Joseph Kogut]
> 
> ## meta-balena-2.73.1
> ### (2021-03-16)
> 
> * Update balena-supervisor from v12.3.5 to v12.4.6 [Felipe Lalanne]
> 
> ## meta-balena-2.73.0
> ### (2021-03-15)
> 
> * image_types_balena: make rootfs labeling generic [Joseph Kogut]
> * image_types_balena: make agnostic to root fstype [Joseph Kogut]
> * mkfs-hostapp-native: make agnostic to fstype [Joseph Kogut]
> 
> ## meta-balena-2.72.2
> ### (2021-03-15)
> 
> * balena: dissolve healthcheck-image-load into healthcheck script [Robert Günzler]
> 
> ## meta-balena-2.72.1
> ### (2021-03-11)
> 
> * Fix disablement of userspace firmware loading requests [Pelle van Gils]
> 
> ## meta-balena-2.72.0
> ### (2021-03-10)
> 
> 
> <details>
> <summary> os-config: Update os-config from v1.1.4 to v1.2.0 [Kyle Harding] </summary>
> 
>> ### os-config-1.2.0
>> #### (2021-02-23)
>> 
>> * os-config: rename flasher flag path [Kyle Harding]
>> 
> </details>
> 
> * Rename resin image types to balena [Kyle Harding]
> 
> ## meta-balena-2.71.7
> ### (2021-03-08)
> 
> * Apply aufs patches if aufs is present in kernel config [Kyle Harding]
> 
> ## meta-balena-2.71.6
> ### (2021-03-05)
> 
> * grub-efi: build required modules into grub image [Joseph Kogut]
> 
> ## meta-balena-2.71.5
> ### (2021-03-03)
> 
> * initrdscripts: always use by-uuid symlink looking for flasher rootfs [Michal Toman]
> 
> ## meta-balena-2.71.4
> ### (2021-03-01)
> 
> * Update OS test suite [Vipul Gupta (@vipulgupta2048)]
> 
> ## meta-balena-2.71.3
> ### (2021-02-26)
> 
> * balena: Make the healthcheck loading service part of balena.service [Robert Günzler]
> 
> ## meta-balena-2.71.2
> ### (2021-02-23)
> 
> * dnsmasq: enable dbus support [Kyle Harding]
> * dnsmasq: update to 2.84 with dnspooq fix [Kyle Harding]
> 
> ## meta-balena-2.71.1
> ### (2021-02-23)
> 
> * recipes-bsp: grub: install only release modules [Joseph Kogut]
> 
> ## meta-balena-2.71.0
> ### (2021-02-15)
> 
> * meta-balena-common: add grub-efi support [Joseph Kogut]
> 
> ## meta-balena-2.70.2
> ### (2021-02-12)
> 
> * Update PR template to specify test coverage in more detail [Alex Gonzalez]
> * Update codeowners [Alex Gonzalez]
> 
> ## meta-balena-2.70.1
> ### (2021-02-11)
> 
> * Add leviathan automated OS test suite [Vipul Gupta (@vipulgupta2048)]
> 
> ## meta-balena-2.70.0
> ### (2021-02-11)
> 
> * systemd/timeinit: use systemd mount unit for /etc/fake-hwclock [Mark Corbin]
> 
> ## meta-balena-2.69.1
> ### (2021-02-03)
> 
> * Update balena-supervisor from v12.3.0 to v12.3.5 [Miguel Casqueira]
> 
> ## meta-balena-2.69.0
> ### (2021-02-01)
> 
> * openvpn: remove resin-ntp-config call from upscript.sh [Mark Corbin]
> * resin-vars: trigger NTP config script on config.json changes [Mark Corbin]
> * resin-ntp-config: update script and add systemd service [Mark Corbin]
> * networkmanager: add improved dispatcher scripts for NTP handling [Mark Corbin]
> * chrony: add sourcedir support and helper script [Mark Corbin]
> 
> ## meta-balena-2.68.1
> ### (2021-01-29)
> 
> * Fix task ordering for the iwlwifi_firmware_clean task [Florin Sarbu]
> 
> ## meta-balena-2.68.0
> ### (2021-01-29)
> 
> * Update NetworkManager to 1.28.0 [Zahari Petkov]
> 
> ## meta-balena-2.67.6
> ### (2021-01-28)
> 
> * docs: mention balenaRootCA as a config.json parameter [Matthew McGinn]
> 
> ## meta-balena-2.67.5
> ### (2021-01-27)
> 
> * replace busybox ps with procps [klutchell] [Kyle Harding]
> 
> ## meta-balena-2.67.4
> ### (2021-01-27)
> 
> * Update aufs4 and aufs5 kernel patches [Florin Sarbu]
> 
> ## meta-balena-2.67.3
> ### (2021-01-15)
> 
> * kernel-headers-test: Install python dependency [Alexandru Costache]
> 
> ## meta-balena-2.67.2
> ### (2021-01-14)
> 
> * Fix pppd timeout when launched by NetworkManager [Zahari Petkov]
> 
> ## meta-balena-2.67.1
> ### (2021-01-13)
> 
> * resin-device-register: Fix post provisioning state not reported [Alexandru Costache]
> 
> ## meta-balena-2.67.0
> ### (2021-01-12)
> 
> * Update balena-supervisor from v12.2.11 to v12.3.0 [Felipe Lalanne]
> 
> ## meta-balena-2.66.3
> ### (2021-01-12)
> 
> * Respect custom CA in supervisor [Michal Toman]
> 
> ## meta-balena-2.66.2
> ### (2021-01-11)
> 
> * README: Rename resin-logo to balena-logo. [Alex Gonzalez]
> 
> ## meta-balena-2.66.1
> ### (2021-01-04)
> 
> * kernel-devsrc: use upstream recipe starting with dunfell [Kyle Harding]
> * gen_mod_headers: add missing arch headers to tools [Kyle Harding]
> 
> ## meta-balena-2.66.0
> ### (2020-12-18)
> 
> * chrony: bump to version 4.0 [Mark Corbin]
> 
> ## meta-balena-2.65.1
> ### (2020-12-17)
> 
> * u-boot: Add required configuration for BalenaOS environment [Alex Gonzalez]
> 
> ## meta-balena-2.65.0
> ### (2020-12-14)
> 
> * Update balena-supervisor from v12.1.1 to v12.2.11 [Miguel Casqueira]
> 
> ## meta-balena-2.64.4
> ### (2020-12-14)
> 
> * Add IPV6 multicast routing capability [Alex Gonzalez]
> 
> ## meta-balena-2.64.3
> ### (2020-12-11)
> 
> * Revert "resin-data.mount: Remove default dependencies" [Alex Gonzalez]
> * hostapp-update-hooks: Add supervisor database fix [Alex Gonzalez]
> * resin-supervisor: Make sure the database directory exists [Alex Gonzalez]
> * Correct the data partition mountpoint [Alex Gonzalez]
> 
> ## meta-balena-2.64.2
> ### (2020-12-10)
> 
> * meta-balena-common: kernel-resin: enable task-accounting by default [Joseph Kogut]
> * meta-balena-common: kernel-resin: create task-accounting config [Joseph Kogut]
> 
> ## meta-balena-2.64.1
> ### (2020-12-09)
> 
> * Update codeowners [Alex Gonzalez]
> 
> ## meta-balena-2.64.0
> ### (2020-12-07)
> 
> * rust: remove merged fix for TUNE_FEATURES parsing [Kyle Harding]
> * systemd: update patches to avoid fuzzy matching [Kyle Harding]
> * systemd: add missing udev rules [Kyle Harding]
> * systemd: avoid conflicts with timeinit package [Kyle Harding]
> * dropbear: prevent conflicts with openssh [Kyle Harding]
> * networkmanager: add bash requirement [Kyle Harding]
> * networkmanager: remove deprecated bluetooth inherit [Kyle Harding]
> * meta-balena-common: replace distro_features_check with features_check [Kyle Harding]
> * avahi: remove example services [Kyle Harding]
> * u-boot: disable u-boot-initial-env [Kyle Harding]
> * dnsmasq: fix build after y2038 changes in glib [Kyle Harding]
> * bluez5: replace experimental flag patch with service conf [Kyle Harding]
> * mtools: remove initialize-direntry patch [Kyle Harding]
> * meta-balena-dunfell: dunfell compatibility layer support [Kyle Harding]
> 
> ## meta-balena-2.63.1
> ### (2020-12-04)
> 
> * start-resin-supervisor: fix directory creation for 'balena start' [Mark Corbin]
> 
> ## meta-balena-2.63.0
> ### (2020-11-30)
> 
> * zram-swap-init: adjust default to lesser of 50%/4GB [Joseph Kogut]
> 
> ## meta-balena-2.62.2
> ### (2020-11-25)
> 
> * chrony: use a non-privileged UDP source port [Mark Corbin]
> 
> ## meta-balena-2.62.1
> ### (2020-11-19)
> 
> * supervisor: remove old/unnecessary balenaRootCA references [Matthew McGinn]
> 
> ## meta-balena-2.62.0
> ### (2020-11-13)
> 
> * systemd/timeinit: improve RTC handling at boot [Mark Corbin]
> * os-helpers: add support functions for system date/time [Mark Corbin]
> 
> ## meta-balena-2.61.3
> ### (2020-11-05)
> 
> * modemmanager: add u-blox-modeswitch scripts [Mark Corbin]
> 
> ## meta-balena-2.61.2
> ### (2020-11-05)
> 
> * Check the API for configuration changes once a day [Michal Toman]
> 
> ## meta-balena-2.61.1
> ### (2020-11-04)
> 
> * Enable kernel user space probes support [Alex Gonzalez]
> 
> ## meta-balena-2.61.0
> ### (2020-11-04)
> 
> 
> <details>
> <summary> Update balena-supervisor from v11.14.0 to v12.1.1 [Cameron Diver] </summary>
> 
>> ### balena-supervisor-12.1.1
>> #### (2020-10-28)
>> 
>> * Use root mount point to find device-type.json [Cameron Diver]
>> 
>> ### balena-supervisor-12.1.0
>> #### (2020-10-28)
>> 
>> * Change log source from docker to journalctl [Thomas Manning]
>> 
>> ### balena-supervisor-12.0.9
>> #### (2020-10-27)
>> 
>> * Change source of deviceType to device-type.json [Felipe Lalanne]
>> 
>> ### balena-supervisor-12.0.8
>> #### (2020-10-26)
>> 
>> * Fixed evaluating if updates are needed to reach target state [Miguel Casqueira]
>> 
>> ### balena-supervisor-12.0.7
>> #### (2020-10-19)
>> 
>> * Improved log message when networks do not match [Miguel Casqueira]
>> 
>> ### balena-supervisor-12.0.6
>> #### (2020-10-16)
>> 
>> * Fixes check allowing preloading in local (unmanaged) mode [ab77]
>> * Handle delete of multiple images with same dockerImageId [Felipe Lalanne]
>> 
>> ### balena-supervisor-12.0.5
>> #### (2020-10-14)
>> 
>> * Improve calculation for used system memory [Felipe Lalanne]
>> 
>> ### balena-supervisor-12.0.4
>> #### (2020-10-13)
>> 
>> * Don't require an existing supervisor container to sync [Cameron Diver]
>> 
>> ### balena-supervisor-12.0.3
>> #### (2020-10-12)
>> 
>> * Refactor system information filtering [Cameron Diver]
>> * tests: Clean up and consistify naming scheme [Cameron Diver]
>> 
>> ### balena-supervisor-12.0.2
>> #### (2020-10-12)
>> 
>> * Attempt a state report once every maxReportFrequency [Cameron Diver]
>> * Remove superfluous current state reporting code from api-binder [Cameron Diver]
>> 
>> ### balena-supervisor-12.0.1
>> #### (2020-10-12)
>> 
>> * Add features label `io.balena.features.journal-logs` [Thomas Manning]
>> 
>> ### balena-supervisor-12.0.0
>> #### (2020-09-29)
>> 
>> * version: drop SUPERVISOR_VERSION env var [Matthew McGinn]
>> 
>> ### balena-supervisor-11.14.8
>> #### (2020-09-29)
>> 
>> * Fix supervisor deadlock during migration [Felipe Lalanne]
>> 
>> ### balena-supervisor-11.14.7
>> #### (2020-09-25)
>> 
>> * Correctly evaluate if scheduledApply.delay is not set [Miguel Casqueira]
>> 
>> ### balena-supervisor-11.14.6
>> #### (2020-09-24)
>> 
>> * Fix config checks for ConfigFS backend [Felipe Lalanne]
>> 
>> ### balena-supervisor-11.14.5
>> #### (2020-09-24)
>> 
>> * mixpanel: superisor_version -> supervisor_version [Matthew McGinn]
>> 
>> ### balena-supervisor-11.14.4
>> #### (2020-09-18)
>> 
>> * api: Implement scoped Supervisor API keys [Rich Bayliss]
>> 
>> ### balena-supervisor-11.14.3
>> #### (2020-09-17)
>> 
>> * Clarify docs for toggling update lock override from dashboard [M. Casqueira]
>> 
>> ### balena-supervisor-11.14.2
>> #### (2020-09-15)
>> 
>> * Refactor extra_uEnv backend to match with more devices [Miguel Casqueira]
>> 
>> ### balena-supervisor-11.14.1
>> #### (2020-09-14)
>> 
>> * application-manager: Convert to a singleton [Rich Bayliss]
>> * device-state: Convert to a singleton [Rich Bayliss]
>> * api-binder: Convert to a singleton [Rich Bayliss]
>> 
> </details>
> 
> 
> ## meta-balena-2.60.1
> ### (2020-10-30)
> 
> * chrony: set the source UDP port for NTP requests to 123 [Mark Corbin]
> 
> ## meta-balena-2.60.0
> ### (2020-10-29)
> 
> * chrony: don't restore time from drift file or RTC [Mark Corbin]
> * systemd/timeinit: add fake.hwclock to maintain system time over reboots [Mark Corbin]
> * resin-mounts: add bind mount service for /etc/fake-hwclock [Mark Corbin]
> 
> ## meta-balena-2.59.0
> ### (2020-10-27)
> 
> * Add host extensions support [Alex Gonzalez]
> * packagegroup-resin: Add hostapp extensions update script [Alex Gonzalez]
> * hostapp-extensions-update: Add host extensions update script [Alex Gonzalez]
> * resin-vars: Parse the HOSTEXT_IMAGES variable from config.json [Alex Gonzalez]
> * docker-disk: Add the host extension images to the data partition [Alex Gonzalez]
> * docker-disk: Generalize hostapp platform variable [Alex Gonzalez]
> * initrdscripts: Busybox switch_root does not support -c argument [Alex Gonzalez]
> * resin-filesystem-expand: Omit fs check and resize if partition is mounted [Alex Gonzalez]
> * initrdscripts: Expand the resin-data filesystem [Alex Gonzalez]
> * initrdscripts: Add resin-data to fs UUID generation [Alex Gonzalez]
> * resin-data.mount: Remove default dependencies [Alex Gonzalez]
> * packagegroup-resin: Add independent mobynit package to image [Alex Gonzalez]
> * balena-engine: Do not build mobynit [Alex Gonzalez]
> * mobynit: Fix source directory [Alex Gonzalez]
> * mobynit: Separate recipe from balena-engine [Alex Gonzalez]
> 
</details>

# v2.58.6+rev2
## (2020-10-30)

* u-boot: Fix board - dtb name pair [Alexandru Costache]

# v2.58.6+rev1
## (2020-10-30)

* u-boot: Enhance rollback, load Apollo TX2 dtb from rootfs [Alexandru Costache]

<details>
<summary> Update meta-balena from v2.53.9 to v2.58.6 [Alexandru Costache] </summary>

> ## meta-balena-2.58.6
> ### (2020-10-15)
> 
> * readme: DCHP -> DHCP [Matthew McGinn]
> 
> ## meta-balena-2.58.5
> ### (2020-10-13)
> 
> * bootfiles: blacklist proper grub configuration backend [Matthew McGinn]
> 
> ## meta-balena-2.58.4
> ### (2020-10-05)
> 
> * docker-disk: Allow expanding data filesystem on 2TB disks [Alexandru Costache]
> 
> ## meta-balena-2.58.3
> ### (2020-09-18)
> 
> * Blacklist supervisor configuration backend files during HUP [Alex Gonzalez]
> 
> ## meta-balena-2.58.2
> ### (2020-09-17)
> 
> * hooks: fix up improperly named variable [Matthew McGinn]
> 
> ## meta-balena-2.58.1
> ### (2020-09-15)
> 
> * Wait for the root device to come up when necessary [Michal Toman]
> 
> ## meta-balena-2.58.0
> ### (2020-09-05)
> 
> * Respect balenaRootCA system-wide [Michal Toman]
> 
> ## meta-balena-2.57.1
> ### (2020-09-04)
> 
> * os-helpers-logging: Log to stderr rather than stdout [Michal Toman]
> 
> ## meta-balena-2.57.0
> ### (2020-09-04)
> 
> * Update libmbim to 1.24.2, libqmi to 1.26.0, modemmanager to 1.14.2 [Vicentiu Galanopulo]
> 
> ## meta-balena-2.56.0
> ### (2020-09-03)
> 
> 
> <details>
> <summary> Update balena-supervisor from v11.13.0 to v11.14.0 [Cameron Diver] </summary>
> 
>> ### balena-supervisor-11.14.0
>> #### (2020-09-03)
>> 
>> * Add device system information to state endpoint patch [Cameron Diver]
>> 
> </details>
> 
> 
> ## meta-balena-2.55.0
> ### (2020-09-03)
> 
> 
> <details>
> <summary> Update balena-supervisor from v11.12.4 to v11.13.0 [Cameron Diver] </summary>
> 
>> ### balena-supervisor-11.13.0
>> #### (2020-08-29)
>> 
>> * added support for configuring ODMDATA [Miguel Casqueira]
>> 
>> ### balena-supervisor-11.12.11
>> #### (2020-08-27)
>> 
>> * bug: Resolve mDNS API URLs [Rich Bayliss]
>> 
>> ### balena-supervisor-11.12.10
>> #### (2020-08-24)
>> 
>> * Preventing removing all configurations if device has no backends [Miguel Casqueira]
>> 
>> ### balena-supervisor-11.12.9
>> #### (2020-08-20)
>> 
>> * Don't enforce the vc4-fkms-v3d dtoverlay on rpi4 [Cameron Diver]
>> 
>> ### balena-supervisor-11.12.8
>> #### (2020-08-19)
>> 
>> 
>> <details>
>> <summary> Update dependencies [Pagan Gazzard] </summary>
>> 
>>> #### node-docker-delta-2.2.11
>>> ##### (2020-08-19)
>>> 
>>> * Add .versionbot/CHANGELOG.yml for nested changelogs [Pagan Gazzard]
>>> 
>>> #### node-docker-delta-2.2.10
>>> ##### (2020-08-05)
>>> 
>>> * Removed unused dependencies [Pagan Gazzard]
>>> * circleci: update docker [Pagan Gazzard]
>>> 
>>> #### docker-progress-4.0.3
>>> ##### (2020-08-17)
>>> 
>>> * Update to balena-lint 5.x [Pagan Gazzard]
>>> 
>>> #### docker-progress-4.0.2
>>> ##### (2020-08-17)
>>> 
>>> * Add .versionbot/CHANGELOG.yml for nested changelogs [Pagan Gazzard]
>>> 
>>> #### docker-progress-4.0.1
>>> ##### (2020-03-04)
>>> 
>>> * Update dependencies [Pagan Gazzard]
>>> 
>>> #### docker-progress-4.0.0
>>> ##### (2019-03-26)
>>> 
>>> * Detect error events in push/pull progress streams [Paulo Castro]
>>> 
>>> #### docker-toolbelt-3.3.10
>>> ##### (2020-08-19)
>>> 
>>> * Add .versionbot/CHANGELOG.yml for nested changelogs [Pagan Gazzard]
>>> 
>>> #### docker-toolbelt-3.3.9
>>> ##### (2020-08-17)
>>> 
>>> * Update to balena-lint 5.x [Pagan Gazzard]
>>> 
>>> #### livepush-3.5.1
>>> ##### (2020-08-19)
>>> 
>>> * Add .versionbot/CHANGELOG.yml for nested changelogs [Pagan Gazzard]
>>> 
>>> #### livepush-3.5.0
>>> ##### (2020-07-13)
>>> 
>>> * Allow setting ENV variables in the live image [Roman Mazur]
>>> * Bump dockerode types dependency [Roman Mazur]
>>> 
>>> #### livepush-3.4.1
>>> ##### (2020-05-05)
>>> 
>>> * Update README with information about live directives [Cameron Diver]
>>> 
>>> #### livepush-3.4.0
>>> ##### (2020-04-15)
>>> 
>>> * 🔭 Add a file watcher which can be used by library users [Cameron Diver]
>>> 
>>> #### resin-docker-build-1.1.6
>>> ##### (2020-08-19)
>>> 
>>> * Add .versionbot/CHANGELOG.yml for nested changelogs [Pagan Gazzard]
>>> 
>>> #### resin-docker-build-1.1.5
>>> ##### (2020-04-02)
>>> 
>>> * Update README with correct instantiation method [CameronDiver]
>>> 
>> </details>
>> 
>> 
>> ### balena-supervisor-11.12.7
>> #### (2020-08-19)
>> 
>> 
>> <details>
>> <summary> Update typed-error to 3.x [Pagan Gazzard] </summary>
>> 
>>> #### typed-error-3.2.1
>>> ##### (2020-08-05)
>>> 
>>> * Update dependencies [Pagan Gazzard]
>>> 
>>> #### typed-error-3.2.0
>>> ##### (2019-11-20)
>>> 
>>> * update deps and specify minimum engine requirements [Will Boyce]
>>> 
>>> #### typed-error-3.1.0
>>> ##### (2019-04-01)
>>> 
>>> * dev: Enforce prettier coding standards [Will Boyce]
>>> * npm: Update dependencies and remove `package-lock.json` [Will Boyce]
>>> * codeowners: Add top contributors @wrboyce, @Page-, and @dfunckt [Will Boyce]
>>> * versionbot: Add CHANGELOG.yml (for nested changelogs) [Will Boyce]
>>> 
>>> #### typed-error-3.0.2
>>> ##### (2018-11-01)
>>> 
>>> * Update README with new import style [CameronDiver]
>>> 
>>> #### typed-error-3.0.1
>>> ##### (2018-10-29)
>>> 
>>> * Update to typescript 3 [Pagan Gazzard]
>>> * Update dev dependencies [Pagan Gazzard]
>>> * Add node-10 to the circle test suite [Pagan Gazzard]
>>> 
>>> #### typed-error-3.0.0
>>> ##### (2018-04-17)
>>> 
>>> * Distribute generated typescript declaration [Will Boyce]
>>> * use circle for build/publish and add package-lock [Will Boyce]
>>> * add lint scripts/requirements [Will Boyce]
>>> * Remove `BaseError` class and  directly subclass `Error` [Will Boyce]
>>> * Update dependencies, clean up package/tsconfig [Will Boyce]
>>> 
>>> #### typed-error-2.0.1
>>> ##### (2017-12-15)
>>> 
>>> * Add LICENSE [Akis Kesoglou]
>>> 
>> </details>
>> 
>> 
>> ### balena-supervisor-11.12.6
>> #### (2020-08-18)
>> 
>> 
>> <details>
>> <summary> Update pinejs-client-request to 7.2.1 [Pagan Gazzard] </summary>
>> 
>>> #### pinejs-client-request-7.2.1
>>> ##### (2020-08-18)
>>> 
>>> 
>>> <details>
>>> <summary> Update dependencies [Pagan Gazzard] </summary>
>>> 
>>>> ##### pinejs-client-js-6.7.1
>>>> ###### (2020-08-12)
>>>> 
>>>> * Fix prepare $count typings [Pagan Gazzard]
>>>> 
>>>> ##### pinejs-client-js-6.7.0
>>>> ###### (2020-08-12)
>>>> 
>>>> * Improve typings for request/post/put/patch/delete [Pagan Gazzard]
>>>> 
>>> </details>
>>> 
>>> 
>>> #### pinejs-client-request-7.2.0
>>> ##### (2020-08-12)
>>> 
>>> 
>>> <details>
>>> <summary> Update pinejs-client-core to 6.6.1 [Pagan Gazzard] </summary>
>>> 
>>>> ##### typed-error-3.2.1
>>>> ###### (2020-08-05)
>>>> 
>>>> * Update dependencies [Pagan Gazzard]
>>>> 
>>>> ##### pinejs-client-js-6.6.1
>>>> ###### (2020-08-11)
>>>> 
>>>> * Fix typing when id is specified to be `AnyObject | undefined` [Pagan Gazzard]
>>>> 
>>>> ##### pinejs-client-js-6.6.0
>>>> ###### (2020-08-11)
>>>> 
>>>> * Deprecate `$expand: { 'a/$count': {...} }` [Pagan Gazzard]
>>>> * Deprecate `resource: 'a/$count'` and update typings to reflect it [Pagan Gazzard]
>>>> 
>>>> ##### pinejs-client-js-6.5.0
>>>> ###### (2020-08-11)
>>>> 
>>>> * Add `options: { $count: { ... } }` sugar for top level $count [Pagan Gazzard]
>>>> * Add `$expand: { a: { $count: { ... } } }` sugar for $count in expands [Pagan Gazzard]
>>>> 
>>>> ##### pinejs-client-js-6.4.0
>>>> ###### (2020-08-11)
>>>> 
>>>> * Improve return typing of `subscribe` method [Pagan Gazzard]
>>>> 
>>>> ##### pinejs-client-js-6.3.0
>>>> ###### (2020-08-11)
>>>> 
>>>> * Fix Poll.on typings [Pagan Gazzard]
>>>> * Improve return typing when id is passed to GET methods [Pagan Gazzard]
>>>> * Remove `PromiseResult` type, use `Promise<PromiseResultTypes>` instead [Pagan Gazzard]
>>>> * Remove `PromiseObj` type, use `Promise<{}>` instead [Pagan Gazzard]
>>>> 
>>>> ##### pinejs-client-js-6.2.0
>>>> ###### (2020-08-10)
>>>> 
>>>> * Add `$filter: { a: { $count: 1 } }` sugar for $count in filters [Pagan Gazzard]
>>>> 
>>>> ##### pinejs-client-js-6.1.2
>>>> ###### (2020-08-10)
>>>> 
>>>> * Remove redundant ParamsObj/SubscribeParamsObj types [Pagan Gazzard]
>>>> 
>>>> ##### pinejs-client-js-6.1.1
>>>> ###### (2020-08-10)
>>>> 
>>>> * Make use of `mapObj` helper in more places [Pagan Gazzard]
>>>> * Use `Object.keys` in preference to `hasOwnProperty` where applicable [Pagan Gazzard]
>>>> 
>>> </details>
>>> 
>>> 
>> </details>
>> 
>> 
>> ### balena-supervisor-11.12.5
>> #### (2020-08-12)
>> 
>> * Refactor configurable backend class names [Miguel Casqueira]
>> 
> </details>
> 
> 
> ## meta-balena-2.54.3
> ### (2020-08-25)
> 
> * Pack /lib/vdso/Makefile in kernel-modules-headers [Vicentiu Galanopulo]
> 
> ## meta-balena-2.54.2
> ### (2020-08-12)
> 
> 
> <details>
> <summary> balena-supervisor: Update to v11.12.4 [Alex Gonzalez] </summary>
> 
>> ### balena-supervisor-11.12.4
>> #### (2020-08-12)
>> 
>> * bug: Firewall not blocking supervisor access from outside the device [Rich Bayliss]
>> 
>> ### balena-supervisor-11.12.3
>> #### (2020-08-11)
>> 
>> * bug: Allow DNS through firewall for local containers [Rich Bayliss]
>> 
> </details>
> 
> 
> ## meta-balena-2.54.1
> ### (2020-08-07)
> 
> * Package iwlwifi-cc-a0-48 firmware separately [Florin Sarbu]
> 
> ## meta-balena-2.54.0
> ### (2020-08-06)
> 
> 
> <details>
> <summary> Update balena-supervisor from v11.9.9 to v11.12.2 [Cameron Diver] </summary>
> 
>> ### balena-supervisor-11.12.2
>> #### (2020-08-05)
>> 
>> * Fix device-tag fetching function [Cameron Diver]
>> 
>> ### balena-supervisor-11.12.1
>> #### (2020-08-05)
>> 
>> 
>> <details>
>> <summary> Update resumable-request [Pagan Gazzard] </summary>
>> 
>>> #### resumable-request-2.0.1
>>> ##### (2020-08-05)
>>> 
>>> * Add .versionbot/CHANGELOG.yml for nested changelogs [Pagan Gazzard]
>>> * Optimize lodash dependency [Pagan Gazzard]
>>> 
>> </details>
>> 
>> 
>> ### balena-supervisor-11.12.0
>> #### (2020-08-05)
>> 
>> 
>> <details>
>> <summary> Update contrato to 0.5 [Pagan Gazzard] </summary>
>> 
>>> #### contrato-0.5.0
>>> ##### (2020-08-05)
>>> 
>>> * Remove handlebars-helpers to shrink bundle size [Pagan Gazzard]
>>> 
>>> #### contrato-0.4.0
>>> ##### (2020-08-04)
>>> 
>>> 
>>> <details>
>>> <summary> Update skhema to 5.x [Pagan Gazzard] </summary>
>>> 
>>>> ##### skhema-5.3.2
>>>> ###### (2020-08-04)
>>>> 
>>>> * Switch to typed-error [Pagan Gazzard]
>>>> 
>>>> ##### skhema-5.3.1
>>>> ###### (2020-08-04)
>>>> 
>>>> * Add .versionbot/CHANGELOG.yml for nested changelogs [Pagan Gazzard]
>>>> 
>>>> ##### skhema-5.3.0
>>>> ###### (2020-05-05)
>>>> 
>>>> * filter: Throw a custom error if the schema is invalid [Juan Cruz Viotti]
>>>> 
>>>> ##### skhema-5.2.9
>>>> ###### (2019-12-12)
>>>> 
>>>> * Add test to show .filter() not working correctly [StefKors]
>>>> * When combining with baseSchema merge enum with AND operator [StefKors]
>>>> 
>>>> ##### skhema-5.2.8
>>>> ###### (2019-11-27)
>>>> 
>>>> * Ensure values in "enum" are unique [Juan Cruz Viotti]
>>>> 
>>>> ##### skhema-5.2.7
>>>> ###### (2019-11-27)
>>>> 
>>>> * filter: Correctly handle "enum" inside "anyOf" [Juan Cruz Viotti]
>>>> 
>>>> ##### skhema-5.2.6
>>>> ###### (2019-11-19)
>>>> 
>>>> * merge: Be explicit about additionalProperties [Juan Cruz Viotti]
>>>> 
>>>> ##### skhema-5.2.5
>>>> ###### (2019-05-09)
>>>> 
>>>> * Add a resolver for the const keyword [Lucian]
>>>> 
>>>> ##### skhema-5.2.4
>>>> ###### (2019-04-15)
>>>> 
>>>> * Configure AJV instances with an LRU cache [Juan Cruz Viotti]
>>>> 
>>>> ##### skhema-5.2.3
>>>> ###### (2019-04-15)
>>>> 
>>>> * Set addUsedSchema to false in all AJV instances [Juan Cruz Viotti]
>>>> 
>>>> ##### skhema-5.2.2
>>>> ###### (2019-03-20)
>>>> 
>>>> * Fix bug in scoreMatch when handling arrays [Lucian]
>>>> 
>>>> ##### skhema-5.2.1
>>>> ###### (2019-03-19)
>>>> 
>>>> * Fix bad require name and .only in tests [Lucian]
>>>> 
>>>> ##### skhema-5.2.10
>>>> ###### (Invalid date)
>>>> 
>>>> * .filter(): Only match if the base schema matches [Lucian Buzzo]
>>>> 
>>>> ##### skhema-5.2.0
>>>> ###### (2019-03-19)
>>>> 
>>>> * Add ability to provide custom resolvers to merge() [Lucian]
>>>> 
>>>> ##### skhema-5.1.1
>>>> ###### (2019-02-08)
>>>> 
>>>> * Split up and optimize lodash dependencies [Lucian]
>>>> 
>>>> ##### skhema-5.1.0
>>>> ###### (2019-01-08)
>>>> 
>>>> * feature: Implement method for restricting a schema by another schema [Lucian Buzzo]
>>>> 
>>>> ##### skhema-5.0.0
>>>> ###### (Invalid date)
>>>> 
>>>> * Remove ability to add custom keywords or formats [Lucian]
>>>> 
>>>> ##### skhema-4.0.4
>>>> ###### (Invalid date)
>>>> 
>>>> * Improve performance of clone operations [Lucian]
>>>> 
>>>> ##### skhema-4.0.3
>>>> ###### (2018-12-10)
>>>> 
>>>> * Don't bust AJV cache [Lucian]
>>>> 
>>>> ##### skhema-4.0.2
>>>> ###### (2018-12-10)
>>>> 
>>>> * Add benchmark tests [Giovanni Garufi]
>>>> 
>>>> ##### skhema-4.0.1
>>>> ###### (2018-12-04)
>>>> 
>>>> * Recurse through nested `anyOf` statements when filtering [Lucian]
>>>> 
>>>> ##### skhema-4.0.0
>>>> ###### (2018-12-03)
>>>> 
>>>> * Treat undefined additionalProperties as true instead of false [Lucian]
>>>> 
>>>> ##### skhema-3.0.1
>>>> ###### (Invalid date)
>>>> 
>>>> * stryker: Increase test timeout [Juan Cruz Viotti]
>>>> * test: Configure Stryker for mutative testing [Juan Cruz Viotti]
>>>> 
>>>> ##### skhema-3.0.0
>>>> ###### (2018-11-29)
>>>> 
>>>> * Define additionalProperty inheritance in anyOf [Giovanni Garufi]
>>>> * Formalising filtering logic [Lucian]
>>>> * Added failing test case with mutation [Lucian]
>>>> 
>>>> ##### skhema-2.5.2
>>>> ###### (2018-11-07)
>>>> 
>>>> * hotfix: Make sure things that should be filtered are filtered [Juan Cruz Viotti]
>>>> 
>>>> ##### skhema-2.5.1
>>>> ###### (2018-11-06)
>>>> 
>>>> * filter: Force additionalProperties: true on match schemas [Juan Cruz Viotti]
>>>> 
>>>> ##### skhema-2.5.0
>>>> ###### (2018-10-16)
>>>> 
>>>> * Validate against just the schema if `options.schemaOnly` is true [Lucian Buzzo]
>>>> 
>>>> ##### skhema-2.4.1
>>>> ###### (2018-10-09)
>>>> 
>>>> * merge: When merging an empty array, return a wildcard schema [Lucian Buzzo]
>>>> 
>>>> ##### skhema-2.4.0
>>>> ###### (2018-10-09)
>>>> 
>>>> * validate: Make object optional [Lucian Buzzo]
>>>> 
>>> </details>
>>> 
>>> 
>>> #### contrato-0.3.1
>>> ##### (2020-08-04)
>>> 
>>> * Add .versionbot/CHANGELOG.yml for nested changelogs [Pagan Gazzard]
>>> 
>>> #### contrato-0.3.0
>>> ##### (2020-07-17)
>>> 
>>> * Add logical operator support in templates [Stevche Radevski]
>>> 
>> </details>
>> 
>> 
>> ### balena-supervisor-11.11.7
>> #### (2020-08-04)
>> 
>> * Bump elliptic from 6.5.2 to 6.5.3 [dependabot[bot]]
>> 
>> <details>
>> <summary> Update pinejs-client-request and make use of a named key [Pagan Gazzard] </summary>
>> 
>>> #### pinejs-client-request-7.1.0
>>> ##### (2020-07-28)
>>> 
>>> 
>>> <details>
>>> <summary> Update dependencies [Pagan Gazzard] </summary>
>>> 
>>>> ##### pinejs-client-js-6.1.0
>>>> ###### (2020-07-21)
>>>> 
>>>> * Add support for using named ids [Pagan Gazzard]
>>>> 
>>>> ##### pinejs-client-js-6.0.1
>>>> ###### (2020-06-19)
>>>> 
>>>> * Drop unnecessary async from request() [Thodoris Greasidis]
>>>> 
>>> </details>
>>> 
>>> 
>>> #### pinejs-client-request-7.0.1
>>> ##### (2020-07-28)
>>> 
>>> * Increase default timeout to 59s [Pagan Gazzard]
>>> 
>> </details>
>> 
>> 
>> ### balena-supervisor-11.11.6
>> #### (2020-07-31)
>> 
>> * Fixes documentation - ping doesn't need apiKey and minor documentation formatting changes. [Nitish Agarwal]
>> 
>> ### balena-supervisor-11.11.5
>> #### (2020-07-31)
>> 
>> * Fixes #1299 v1 start/stop endpoint issue with service access. [Nitish Agarwal]
>> 
>> ### balena-supervisor-11.11.4
>> #### (2020-07-31)
>> 
>> * bug: Fix undefined containerId object [Rich Bayliss]
>> 
>> ### balena-supervisor-11.11.3
>> #### (2020-07-30)
>> 
>> * fix matching extra_uEnv backend with unsupported devices [Miguel Casqueira]
>> 
>> ### balena-supervisor-11.11.2
>> #### (2020-07-30)
>> 
>> * Fix an issue with reporting initial config using a stale target state [Pagan Gazzard]
>> 
>> ### balena-supervisor-11.11.1
>> #### (2020-07-29)
>> 
>> * fix up "atleast" -> "at least" [Matthew McGinn]
>> 
>> ### balena-supervisor-11.11.0
>> #### (2020-07-28)
>> 
>> * Support setting device/fleet configuration in extra_uEnv.txt [Miguel Casqueira]
>> 
>> ### balena-supervisor-11.10.0
>> #### (2020-07-24)
>> 
>> * Extract current state reporting to its own module [Pagan Gazzard]
>> 
>> ### balena-supervisor-11.9.10
>> #### (2020-07-23)
>> 
>> * log detection of changes to VPN status [dt-rush]
>> 
> </details>
> 
> 
> ## meta-balena-2.53.14
> ### (2020-08-06)
> 
> * balena-unique-key: Ensure config.json is synced after replacing [Alexandru Costache]
> 
> ## meta-balena-2.53.13
> ### (2020-08-05)
> 
> * flasher-register: if no supervisor information found, report null [Matthew McGinn]
> 
> ## meta-balena-2.53.12
> ### (2020-08-04)
> 
> * systemd: Set net.ipv4.conf.all.rp_filter in balena-os-sysctl [Alexandru Costache]
> 
> ## meta-balena-2.53.11
> ### (2020-07-30)
> 
> * Use a named key when querying for device by uuid [Pagan Gazzard]
> 
> ## meta-balena-2.53.10
> ### (2020-07-29)
> 
> * supervisor: allow supervisor updates without controlling the supervisor state [Matthew McGinn]
> 
</details>

# v2.53.9+rev1
## (2020-07-27)


<details>
<summary> Update meta-balena from v2.52.7 to v2.53.9 [Alexandru Costache] </summary>

> ## meta-balena-2.53.9
> ### (2020-07-23)
> 
> 
> <details>
> <summary> balena-supervisor: Update to v11.9.9 [Rich Bayliss] </summary>
> 
>> ### balena-supervisor-11.9.9
>> #### (2020-07-23)
>> 
>> * common: Fix bug where aliases might be undefined [Rich Bayliss]
>> 
> </details>
> 
> 
> ## meta-balena-2.53.8
> ### (2020-07-23)
> 
> * resin-supervisor: Create required directories before launch [Alex Gonzalez]
> 
> ## meta-balena-2.53.7
> ### (2020-07-23)
> 
> 
> <details>
> <summary> balena-supervisor: Update to v11.9.8 [Florin Sarbu] </summary>
> 
>> ### balena-supervisor-11.9.8
>> #### (2020-07-22)
>> 
>> * Bump lodash from 4.17.15 to 4.17.19 [dependabot[bot]]
>> 
>> ### balena-supervisor-11.9.7
>> #### (2020-07-22)
>> 
>> * docker-utils: Test network gateway determination logic [Rich Bayliss]
>> * Fix docker-util using incorrect reference for function [Miguel Casqueira]
>> 
> </details>
> 
> 
> ## meta-balena-2.53.6
> ### (2020-07-21)
> 
> * recipes-containers/balena: Use separate service for loading healthcheck image [Alexandru Costache]
> 
> ## meta-balena-2.53.5
> ### (2020-07-21)
> 
> 
> <details>
> <summary> balena-supervisor: Update to v11.9.6 [Rich Bayliss] </summary>
> 
>> ### balena-supervisor-11.9.6
>> #### (2020-07-20)
>> 
>> * Fix purge and restart invocations by providing instanced apps [Cameron Diver]
>> * Fix purge invocations of new singletons [Cameron Diver]
>> 
>> ### balena-supervisor-11.9.5
>> #### (2020-07-14)
>> 
>> * Update ESR version information [Cameron Diver]
>> 
> </details>
> 
> 
> ## meta-balena-2.53.4
> ### (2020-07-21)
> 
> * Add support for aufs5 on kernel 5.x variants [Florin Sarbu]
> * Force choosing busybox-hwclock over util-linux-hwclock [Alex Gonzalez]
> 
> ## meta-balena-2.53.3
> ### (2020-07-16)
> 
> * provisioning: provide base supervisor_version during provision [Matthew McGinn]
> 
> ## meta-balena-2.53.2
> ### (2020-07-16)
> 
> * Add LZ4 support config for older kernels [Alexandru Costache]
> 
> ## meta-balena-2.53.1
> ### (2020-07-14)
> 
> * Remove unnecessary config.json keys [Pagan Gazzard]
> 
> ## meta-balena-2.53.0
> ### (2020-07-14)
> 
> * resin-supervisor: Create required directories before launch [Alex Gonzalez]
> * Rebrand custom resin logos [Alex Gonzalez]
> * plymouth: Remove patch that sets plymouth resin theme [Alex Gonzalez]
> * docker-disk: Update dind container to v19.03.10 [Michal Toman]
> * docker-disk: Update to still supported dind container [Gergely Imreh]
> * Use udev for setting up wlan power management [Michal Toman]
> * Use --mount instead of --volume for bind mounts to the supervisor container. [Robert Günzler]
> 
</details>

# v2.52.7+rev1
## (2020-07-14)

* Do not use wireless-regdb-static until we move to kernel >= 4.15 [Alexandru Costache]
* Added balena-yocto-scripts at v1.8.0 [Alexandru Costache]
