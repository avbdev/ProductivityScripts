
#!/bin/bash

echo "Preparing controller node..."

## ubuntu
## Execute the script as root

echo "Fetching OS updates..."
apt update

echo "Updating Kernel and Firmware..."
apt dist-upgrade

echo "Installing required tools..."
apt install build-essential git chrony openssh-server python3 sudo


echo "Fetching openstack git repo..."
# if the opendev link doesn't work try github link
git clone -b 26.0.0 https://opendev.org/openstack/openstack-ansible /opt/openstack-ansible
#git clone -b 26.0.0 https://github.com/openstack/openstack-ansible.git /opt/openstack-ansible


echo "Go to openstack git folder..."
cd /opt/openstack-ansible

echo "Bootstrap OpenStack Ansible..."
scripts/bootstrap-ansible.sh


