#!/bin/sh

export DEBIAN_FORNTEND=noninteractive

apt-get update && apt-get -y dist-upgrade  && apt-get --purge -y autoremove

apt-get -y install build-essential

## vboxlinuxadditions.run

apt-get -y install dnsmasq 
apt-get -y install firehol

systemctl disable --now systemd-resolved.service

journalctl -xe
systemctl restart dnsmasq
systemctl enable dnsmasq

rm -f /etc/resolv.conf
mv /etc/resolv.conf-new /etc/resolv.conf 
mv /etc/firehol.conf-new /etc/firehol/firehol.conf

firehol try




adduser vagrant rtb