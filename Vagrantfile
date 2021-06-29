# -*- mode: ruby -*-

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.define "RTB-v" do |RTBv|
    RTBv.vm.hostname = "RTB-v"
    RTBv.vm.network "private_network", ip: "132.168.100.100", virtualbox__intnet: "mynetwork"
    RTBv.vm.provider "virtualbox" do |vb|
      vb.name = "RTBv"
      vb.cpus = "2"
      vb.memory = "4096"
    end
    RTBv.vm.provision "shell", path: "scripts/rtb-provision.sh"
  end
end