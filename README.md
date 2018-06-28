# docker-etherip-ioc

##Docker IOC for Rockwell - Allen Bradly PLC.

This project is an EPICS IOC based on Ether_IP. All etherip-ioc-based EPICS interfaces created by LNLS Controls Group for Sirius control system will be contained in this application.

Wiki-Sirius DOC - https://wiki-sirius.lnls.br/mediawiki/index.php/CON:EPICS_clients_on_Allen_Bradley_PLC


##Setup

This repository contains an EPICS 3.14 base image and the updated Stream-ioc repository installed. The following software is installed in the image:

* apt-get update and upgrade;
* python 3 - pcaspy, pyepics, pyredis, among others;
* asynDriver (R4-33);
* ntpClient
* redis;

The 'ioc.sh' file on /scripts is responsible for running ioc within the Git stream-ioc repository. The repository is installed in the folder:

```
/opt/etherip-ioc
```
EPICS base 3-15-5 is installed in the folder:

```
/opt/epics/base-3.14
```

After adding the files to be executed in 'ioc.sh' just give a build of the image of the container and then a run using the following domains:

```
* sudo ./build-docker-rad-ioc.sh
* sudo ./run-docker-rad-ioc.sh
```
