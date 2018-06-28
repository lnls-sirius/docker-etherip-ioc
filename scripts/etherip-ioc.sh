#!/bin/sh

#
# A script to clone and build the smtp mail proxy application.
#
# Aureo Freitas
# Controls Group - Brazilian Synchrotron Light Source Laboratory
#
cd /opt

git clone --recursive --branch=${GITHUB_STREAM_BRANCH} ${GITHUB_STREAM_REPO}

export EPICS_BASE_RELEASE=/opt/epics/base-3.14.12.6
export EPICS_VER=master

cd etherip-ioc/ether_ip
sed -i "8s:.*:EPICS_VER=${EPICS_VER}:" /opt/etherip-ioc/ether_ip/configure/RELEASE
sed -i "9s:.*:EPICS_BASE_RELEASE=${EPICS_BASE_RELEASE}:" /opt/etherip-ioc/ether_ip/configure/RELEASE
cat /opt/etherip-ioc/ether_ip/configure/RELEASE

make
cd
echo EtherIP-ioc Ok
