#!/bin/bash

yum -y update && yum clean all;
yum -y install wget
yum -y install tar
yum -y install gcc
yum -y install zlib-devel
yum -y install sudo
yum -y install git

service iptables stop;
chkconfig iptables off;
rm -rf /etc/rc.d/init.d/iptables

wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -ivh epel-release-6-8.noarch.rpm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
source ~/.bashrc
nvm install --lts
npm install --global gulp-cli --unsafe
npm install --global @angular/cli --unsafe
