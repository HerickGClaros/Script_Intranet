#!/bin/bash



#install build tools
apt-get -y install devscripts build-essential fakeroot debhelper dh-autoreconf cdbs xterm
apt-get -y install dpkg-dev libldap2-dev libpam0g-dev libdb-dev cdbs libsasl2-dev libcppunit-dev libkrb5-dev comerr-dev libcap2-dev libecap3-dev libexpat1-dev  
# install build dependences for squid
apt-get -y build-dep squid

# install additional packages for squid 3.5.23 (see http://squid-web-proxy-cache.1019090.n4.nabble.com/Build-errors-with-Squid-3-5-24-under-Debian-td4681637.html)
apt-get -y install libdbi-perl libssl1.0-dev




#useradd -m -d /home/.confproxy userproxyinstall -s /bin/bash

#cp ./script_intranet/rules.patch /home/.confproxy/rules.patch
#cp ./script_intranet/reSquid.sh /home/.confproxy/reSquid.sh

pwd

#su - userproxyinstall -c "pwd "
#su - userproxyinstall -c "./reSquid.sh"
./script_intranet/installProxy.sh

