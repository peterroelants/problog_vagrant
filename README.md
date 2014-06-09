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


Shutting down or destroying the VM
----------------------------------

The VM can be shut down by running `vagrant halt` in the Vagrant folder. The VM will shut down, and its disk contents will be saved.

The VM can be removed by running `vagrant destroy` in the Vagrant folder. This wil remove the virtual machine, but keep the files in the shared /vagrant/ folder.

More information can be found in the [Vagrant documentation](http://docs.vagrantup.com/v2/getting-started/teardown.html).


Increasing memory
-----------------

By default this VM is configured to use 2GB of memory. You can increase the memory by changing the `v.memory = 2048` line in the Vagrant file, followed by running `vagrant reload --provision` if the VM is running, or just run `vagrant up` if the VM is not yet running.

An other option is to increase the available memory in VirtualBox. Halt the VM with `vagrant halt`, start VirtualBox, select the Vagrant VM running ProbLog, go to *Settings*, *System*, and change the allocated memory.g





Useful links
------------

- [Vagrant](http://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant tutorial](http://docs.vagrantup.com/v2/getting-started/index.html)
- [Problog](http://dtai.cs.kuleuven.be/problog/)

