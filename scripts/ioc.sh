#!/bin/bash
# exec IOC
export EPICS_CAS_SERVER_PORT=5090
cd /opt/etherip-ioc/iocBoot
sleep 3
procServ --chdir /opt/etherip-ioc/iocBoot 20499 ./st.cmd.host
tail -f /dev/null

