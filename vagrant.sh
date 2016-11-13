#!/bin/bash
source ./common.sh
# Installger script for vagrant

dist=$(get_dist)
vagrant_ver='1.8.7'

# Install based on Linux distribution
if [ "${dist}" == 'rhel' ]; then
    rpm -ivh "https://releases.hashicorp.com/vagrant/${vagrant_ver}/vagrant_${vagrant_ver}_x86_64.rpm"
elif [ "${dist}" == 'debian' ]; then
    wget "https://releases.hashicorp.com/vagrant/${vagrant_ver}/vagrant_${vagrant_ver}_x86_64.deb"
    dpkg -i "vagrant_${vagrant_ver}_x86_64.rpm"
fi
