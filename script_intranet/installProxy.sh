#!/bin/bash

# all packages are installed as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

#cd /home/.confproxy/


# install some more required packages
apt-get -y install squid-langpack

# get arch
#ARCH="amd64"
#cat /proc/cpuinfo | grep -m 1 ARMv7 > /dev/null 2>&1
#if [ $? -eq 0 ]; then
	#ARCH="armhf"
#fi

ARCH=$(getconf LONG_BIT)

if [ $ARCH -eq 32 ]; then
	pwd
	cd ./script_intranet/squid32
	dpkg --install squid-common_3.5.23-5_all.deb
	dpkg --install squid_3.5.23-5_i386.deb
	dpkg --install squidclient_3.5.23-5_i386.deb
	cd ..
fi
if [ $ARCH -eq 64 ]; then
	cd ./script_intranet/squid64
	dpkg --install squid-common_3.5.23-5_all.deb
	dpkg --install squid_3.5.23-5_amd64.deb
	dpkg --install squidclient_3.5.23-5_amd64.deb
	cd ..
fi

# decend into working directory
#pushd build/squid3

# install squid packages
#dpkg --install squid-common_3.5.23-5_all.deb
#dpkg --install squid_3.5.23-5_${ARCH}.deb
#dpkg --install squidclient_3.5.23-5_${ARCH}.deb

# and revert
#popd

# put the squid on hold to prevent updating
apt-mark hold squid squid-common
