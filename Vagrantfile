# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "virtualUbuntu"

  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.provision :shell, :path => "BootStrap"

  config.vm.forward_port 80, 8080 
  config.vm.forward_port 443, 8443
  
  end