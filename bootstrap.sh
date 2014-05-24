#!/usr/bin/env bash

sudo apt-get update

# install python
sudo apt-get -y install python3

# install git
sudo apt-get -y install git

# install make
sudo apt-get -y install make

# install unzip
sudo apt-get -y install unzip

# install gmp
sudo apt-get -y install libgmp-dev

# install Yap

# set up dependencies
# http://sourceforge.net/p/yap/mailman/message/31633652/
sudo apt-get -y install libreadline6-dev
sudo apt-get -y install libgmp3-dev
sudo apt-get -y install g++
sudo apt-get -y install zlib1g-dev
sudo apt-get -y install libncurses5-dev

mkdir /home/vagrant/libs/
# actually install Yap
cd /home/vagrant/libs/
git clone   git://yap.dcc.fc.up.pt/yap-6
#git clone git://gitorious.org/yap-git/mainline.git
cd /home/vagrant/libs/yap-6/
git submodule init
git submodule update
./configure --enable-tabling=yes
make
sudo make install

# download problog
cd /home/vagrant/libs/
wget http://dtai.cs.kuleuven.be/problog/get_the_zip.php -O problog2.zip
unzip problog2.zip -d problog2

