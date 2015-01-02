cp /vagrant/ssh/id_rsa  /home/vagrant/.ssh/id_rsa
cp /vagrant/ssh/id_rsa.pub  /home/vagrant/.ssh/id_rsa.pub
chown vagrant: /home/vagrant/.ssh/id_rsa.pub
chown vagrant: /home/vagrant/.ssh/id_rsa
chmod 600 /home/vagrant/.ssh/id_rsa.pub /home/vagrant/.ssh/id_rsa
chmod 700 /home/vagrant/.ssh
cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys

sudo apt-get install -y git
ssh-keyscan bitbucket.org >> /home/vagrant/.ssh/known_hosts
cd /vagrant && git clone git@bitbucket.org:tyz910/ansible-ubuntu.git

sudo /vagrant/ansible-ubuntu/ansible.sh
printf "[vagrant]\n127.0.0.1" | sudo tee --append /etc/ansible/hosts
ssh-keyscan 127.0.0.1 >> /home/vagrant/.ssh/known_hosts
ansible-playbook /vagrant/ansible-ubuntu/vagrant.yml