#!/bin/bash
# This init file install all req. softwares to Docker system
${IOC_FOLDER}/build/scripts/upgrade-apt-get.sh
#${IOC_FOLDER}/build/scripts/asynDriver.sh
${IOC_FOLDER}/build/scripts/python.sh
${IOC_FOLDER}/build/scripts/ntpclient.sh
${IOC_FOLDER}/build/scripts/redis.sh
rm -rf /var/lib/apt/lists/*
