#!/bin/bash
# exec IOC

cd /opt/etherip-ioc/iocBoot
sleep 3
procServ --chdir /opt/etherip-ioc/iocBoot 20499 ./st.cmd.host
tail -f /dev/null

