# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.box_url = "ubuntu/trusty64"
  config.vm.provision :shell, :inline => "sudo apt-get update"
    
  config.vm.provision :shell, :inline => "curl -s https://get.docker.io/ubuntu/ | sudo sh"
  config.vm.provision :shell, :inline => "curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > docker-compose; chmod +x docker-compose; sudo mv docker-compose /usr/local/bin/docker-compose"
   
  config.vm.forward_port 8080, 8080 
  config.vm.forward_port 5000, 5000
  config.vm.forward_port 9000, 9000 
 
end

Vagrant.configure("2") do |config|

config.vm.provider :virtualbox do |virtualbox|
            
virtualbox.customize ["modifyvm", :id, "--memory", "1024"]     
                 
end
end
