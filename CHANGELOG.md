Change log
-----------

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
