#!/bin/sh

#
# A script to clone and build the smtp mail proxy application.
#
# Aureo Freitas
# Controls Group - Brazilian Synchrotron Light Source Laboratory
#
cd /opt

git clone --recursive --branch=${GITHUB_STREAM_BRANCH} ${GITHUB_STREAM_REPO}

export EPICS_BASE=/opt/epics/base-3.15.5
export ASYN=/opt/epics/base-3.15.5/modules/asyn4-33

cd stream-ioc
sed -i "3s:.*:EPICS_BASE=${EPICS_BASE}:" /opt/stream-ioc/configure/RELEASE
sed -i "5s:.*:ASYN=${ASYN}:" /opt/stream-ioc/configure/RELEASE
cat /opt/stream-ioc/configure/RELEASE

rm StreamDevice/GNUmakefile
make
cd
echo Stream-ioc Ok
