#!/bin/bsh
# Installger script for vagrant

DIST=''

# maybe going to a separate function for global usage
if [ -f /etc/redhat-release ]; then
    DIST='rhel'
elif [ -f /etc/debian_version ]; then
    DIST='debian'
fi

# Install based on Linux distribution
if [ "${DIST}" == 'rhel' ]; then
    rpm -ivh https://releases.hashicorp.com/vagrant/1.8.7/vagrant_1.8.7_x86_64.rpm
    yum -y install vagrant_1.8.7_x86_64.rpm
elif [ "${DIST}" == 'debian' ]; then
    wget https://releases.hashicorp.com/vagrant/1.8.7/vagrant_1.8.7_x86_64.deb
    dpkg -i vagrant_1.8.7_x86_64.rpm
fi
