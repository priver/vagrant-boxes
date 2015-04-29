#!/bin/bash -eux

apt-get update
apt-get upgrade -y -o DPkg::Options::=--force-confold
