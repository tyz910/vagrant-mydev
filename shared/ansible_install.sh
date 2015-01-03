#!/bin/sh

sudo apt-get install -y git
cd /vagrant && git clone git@bitbucket.org:tyz910/ansible-ubuntu.git

sudo /vagrant/ansible-ubuntu/ansible.sh
printf "[vagrant]\n127.0.0.1" | sudo tee --append /etc/ansible/hosts
ansible-playbook /vagrant/ansible-ubuntu/vagrant.yml