#!/bin/sh

export DEBIAN_FORNTEND=noninteractive

apt-get update && apt-get -y dist-upgrade  && apt-get --purge -y autoremove

apt-get -y install build-essential

## vboxlinuxadditions.run

apt-get -y install dnsmasq 


systemctl enable --now docker
adduser vagrant docker