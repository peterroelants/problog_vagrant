#!/usr/bin/env bash

# install python
sudo apt-get update
sudo apt-get -y install python3

# install git
sudo apt-get -y install git

# install mercurial
sudo apt-get -y install mercurial

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
# actually install Yap
cd /vagrant/
git clone   git://yap.dcc.fc.up.pt/yap-6
cd yap-6/
git submodule init
git submodule update
./configure --enable-tabling=yes
make
sudo make install

# download problog
cd ../problog/
wget http://dtai.cs.kuleuven.be/problog/get_the_zip.php -O problog2.zip
unzip problog2.zip -d problog2

# remove the linux_x86_64 dir, compile dshapr, en make it the new dir
# remove dir
rm -rf /vagrant/problog/problog2/assist/linux_x86_64/
# compile dsharp
cd /vagrant/problog/problog2/assist/
hg clone https://bitbucket.org/haz/dsharp
cd ./dsharp/
cp Makefile_gmp Makefile
make
# get platform name
platform_name=$(python3 /vagrant/python_scripts/get_platform_name.py)
cd /vagrant/problog/problog2/assist/
mv dsharp $platform_name
