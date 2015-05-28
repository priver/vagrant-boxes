#!/bin/bash

apt-get -y autoremove
apt-get -y clean

rm -rf /var/lib/dhcp/*
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?
