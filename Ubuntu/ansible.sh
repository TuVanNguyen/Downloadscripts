#! /bin/bash

sudo apt-get install software-properties-common
sudo apt-get install ssh #ensure ssh runs properly
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
mkdir .ssh
sudo mkdir -p /root/.ssh
ssh-keygen -t rsa
sudo cat .ssh/id_rsa.pub >> /root/.ssh/authorized_keys
# ssh localhost “date” # validate ssh login 

echo "[webservers]" >> /etc/ansible/hosts
echo "localhost" >> /etc/ansible/hosts

# ansible –m ping webservers # validate installation
