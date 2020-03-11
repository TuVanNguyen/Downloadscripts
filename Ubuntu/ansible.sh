sudo apt-get install software-properties-common
sudo apt-get install ssh #ensure ssh runs properly
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
mkdir .ssh
ssh-keygen -t rsa
cat .ssh/id_rsa.pub >> .ssh/authorized_keys
ssh localhost “date” 

echo "[webservers]" > /etc/ansible/hosts
echo "localhost" > /etc/ansible/hosts

ansible –m ping webservers
