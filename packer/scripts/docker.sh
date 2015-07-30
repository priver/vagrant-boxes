#!/bin/bash

apt-get install -y -o DPkg::Options::=--force-confold docker.io

sed -i 's/GRUB_CMDLINE_LINUX="debian-installer=en_US"/GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"/' /etc/default/grub
update-grub
