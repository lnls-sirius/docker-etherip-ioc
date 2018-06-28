#
# Docker image for RAD Protection Probes on Sirius
#
# Author: Aureo Freitas
# LNLS - Brazilian Synchrotron Light Source Laboratory
#

FROM lnls/epics-base:base-3.14-debian-9

MAINTAINER Aureo Freitas <aureo.carneiro@lnls.br>

# Github environment variables
ENV GITHUB_STREAM_REPO https://github.com/lnls-sirius/etherip-ioc.git
ENV GITHUB_STREAM_BRANCH master

# IOC operation variables
ENV IOC_FOLDER /opt/ether-ip
ENV IOC_VERSION ether-ip-1.0
ENV EPICS_BASE /opt/epics/base-3.14.12.6
ENV ASYN /opt/epics/base-3.14.12.6/modules/asyn4-33
ENV EPICS_HOST_ARCH linux-x86_64

# Create folders
RUN mkdir -p ${IOC_FOLDER}/${IOC_VERSION}/scripts

# Create new folder and copy all scripts
RUN mkdir -p ${IOC_FOLDER}/build/scripts/

# Copy all files
COPY scripts/* ${IOC_FOLDER}/build/scripts/

# Exec main files
RUN ${IOC_FOLDER}/build/scripts/init.sh

# Clone and configure stream ioc
RUN ${IOC_FOLDER}/build/scripts/etherip-ioc.sh

# Run ioc
CMD ["sh", "-c", ${IOC_FOLDER}/build/scripts/ioc.sh]
