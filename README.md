Problog Vagrant
===============

Vagrant configuration for 64-bit Ubuntu 12.04 LTS with Problog and its dependencies installed.

Tested with VirtualBox 4.3.12

Set up vagrant
--------------

Install [Vagrant](http://www.vagrantup.com/downloads.html).

Install latest [VirtualBox version](https://www.virtualbox.org/wiki/Downloads).

    git clone https://github.com/peterroelants/problog_vagrant.git
    cd problog_vagrant
    vagrant init

Starting VM and ssh session
---------------------------

    vagrant up
    vagrant ssh

The Vagrant folder (vagrant_problog) on your host machine will automatically be synced with the /vagrant/ folder on the guest VM.


Problog usage when in shell
---------------------------

Problog will be installed in:

    /home/vagrant/libs/problog2/

Examples:

    /home/vagrant/libs/problog2/src/problog.py -h
    /home/vagrant/libs/problog2/src/problog.py /home/vagrant/libs/problog2/tests/models/1_tossing_coin.pl



Useful links
------------

- [Vagrant](http://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant tutorial](http://docs.vagrantup.com/v2/getting-started/index.html)
- [Problog](http://dtai.cs.kuleuven.be/problog/)

