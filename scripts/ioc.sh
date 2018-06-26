# exec IOC

python3 /opt/rad-ioc/build/scripts/ioc-bbb.py 10000
sleep 3
/opt/stream-ioc/iocBoot/RAD2.cmd

sleep 10
python3 /opt/rad-ioc/build/scripts/ioc-srv.py RAD:THERMO:Gamma RAD:aureo
