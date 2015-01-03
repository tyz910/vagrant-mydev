cp /vagrant/ssh/id_rsa  /home/vagrant/.ssh/id_rsa
cp /vagrant/ssh/id_rsa.pub  /home/vagrant/.ssh/id_rsa.pub
chown vagrant: /home/vagrant/.ssh/id_rsa.pub
chown vagrant: /home/vagrant/.ssh/id_rsa
chmod 600 /home/vagrant/.ssh/id_rsa.pub /home/vagrant/.ssh/id_rsa
chmod 700 /home/vagrant/.ssh
cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys