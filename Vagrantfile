# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "virtualUbuntu64"

  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.provision :shell, :path => "BootStrap"

  config.vm.forward_port 8081, 8081 
  config.vm.forward_port 5000, 5000
  config.vm.forward_port 5432, 5432
  config.vm.forward_port 7777, 7777
  config.vm.forward_port 7778 ,7778 
 
end

Vagrant.configure("2") do |config|

config.vm.provider :virtualbox do |virtualbox|
            
virtualbox.customize ["modifyvm", :id, "--memory", "1024"]     
                 
end
end
