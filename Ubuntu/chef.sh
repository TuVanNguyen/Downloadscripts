#! /bin/bash

# Ubuntu 18.04
# Check out here for latest version URL: https://downloads.chef.io/chef-server
# Installing server
wget https://packages.chef.io/files/stable/chef-server/13.1.13/ubuntu/18.04/chef-server-core_13.1.13-1_amd64.deb -O chef-server-core_13.1.13-1_amd64.deb

sudo dpkg -i chef-server-core_13.1.13-1_amd64.deb

sudo chef-server-ctl reconfigure

#Installing client
sudo curl -L https://www.opscode.com/chef/install.sh | sudo bash

chef-client -v
