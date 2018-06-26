apt-get -y install ntp
sed -i -e '21,24s/^/#/' -e '27s/^/#/' -e '$a\\npool pool.ntp.br' /etc/ntp.conf
#systemctl restart ntp
echo ntpClient OK
