# -*- mode: ruby -*-

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.define "RTB-v" do |RTBv|
    RTBv.vm.hostname = "RTB-v"
    RTBv.vm.network "private_network", ip: "192.168.100.2", virtualbox__intnet: "mynetwork"
    RTBv.vm.provider "virtualbox" do |vb|
      vb.name = "RTBv"
      vb.cpus = "2"
      vb.memory = "4096"
    end
    RTBv.vm.provision "shell", path: "files/rtb-provision.sh"
    #check if deleting the file first is needed
    config.vm.provision "file", source: "files/resolv.conf", destination: "/etc/resolv.conf-new"
    config.vm.provision "file", source: "files/firehol.conf", destination: "/etc/firehol.conf-new"
  end
end