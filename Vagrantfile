Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.box_url = "https://vagrantcloud.com/ubuntu/boxes/trusty64/versions/14.04/providers/virtualbox.box"
    config.vm.hostname = "mydev"

    config.vm.network :private_network, ip: "192.168.10.100"

    config.vm.provider :virtualbox do |v|
        v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        v.customize ["modifyvm", :id, "--memory", "512"]
    end

    config.vm.provision :shell, path: "provision.sh"

    config.vm.synced_folder ".", "/vagrant", disabled: true
    config.vm.synced_folder "shared", "/vagrant"
    config.vm.synced_folder "www", "/var/www"
end