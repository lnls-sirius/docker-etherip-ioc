cd /opt/epics/base-3.15.5
mkdir modules
cd modules
wget https://www.aps.anl.gov/epics/download/modules/asyn4-33.tar.gz
tar -xvzf asyn4-33.tar.gz
rm asyn4-33.tar.gz
sed -i -e '3,4s/^/#/' -e '8s/^/#/' -e '11s/^/#/' -e '14cEPICS_BASE=/opt/epics/base-3.15.5/' asyn4-33/configure/RELEASE
cd asyn4-33
make
cd
echo asynDriver OK 
