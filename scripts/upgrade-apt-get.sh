apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get -y autoremove
apt-get clean
apt-get -y install build-essential git python3 nano
rm -rf /var/lib/apt/lists/*
echo Apt-Get OK
