#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

ln -fs /usr/share/zoneinfo/America/Argentina/Buenos_Aires /etc/localtime
apt-get install -y tzdata
dpkg-reconfigure --frontend noninteractive tzdata
