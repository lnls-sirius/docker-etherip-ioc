apt-get -y install python3-pip
export EPICS_HOST_ARCH=linux-x86_64
pip3 install matplotlib numpy
apt-get -y install swig
pip3 install pcaspy
NOLIBCA=1 pip3 install pyepics
pip3 install pyqtgraph pyserial scipy
pip3 install redis 
pip3 install queue
echo Python OK
