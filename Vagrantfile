# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "puphpet/centos65-x64"
  config.vm.hostname = "apache-phpcgi.local"
  config.vm.network "private_network", ip: "192.168.33.177"
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--paravirtprovider", "kvm"]
#    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision :shell, :path => "provision.sh"

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
end
