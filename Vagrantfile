# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provision :shell, :inline => "sudo apt-get update"

  config.vm.provision :shell, :inline => "curl -sSL https://get.docker.com/gpg | sudo apt-key add -"
  config.vm.provision :shell, :inline => "curl -sSL https://get.docker.com/ | sh"
  config.vm.provision :shell, :inline => "sudo usermod -aG docker ubuntu"
  config.vm.provision :shell, :inline => "sudo curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose"
    
  config.vm.provision :shell, :inline => "sudo chmod +x /usr/local/bin/docker-compose"

  config.vm.provision :shell, :inline => "docker --version"
  
  config.vm.forward_port 8080, 8080
  config.vm.forward_port 5000, 5000
  config.vm.forward_port 9000, 9000

end

Vagrant.configure("2") do |config|

config.vm.provider :virtualbox do |virtualbox|

virtualbox.customize ["modifyvm", :id, "--memory", "1024"]

end
end
