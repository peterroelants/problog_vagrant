# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # set timeout
  config.vm.boot_timeout = 600
  # load inital model
  config.vm.box = "hashicorp/precise64"
  # Set the memory
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end

  # provision from bootstrap.sh
  config.vm.provision :shell, :path => "bootstrap.sh"
end
