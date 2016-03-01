# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.provider "virtualbox" do |v|
      v.memory = 4096
    end
    # Box name & download source
    #config.vm.box = "ubuntu-precise12042-x64-vbox43"
    config.vm.box = "ubuntu/trusty64"
    
    # Provisioning
    config.vm.provision :shell, :path => "bootstrap.sh"
    # For RVM
    config.vm.provision :shell, path: "install-rvm.sh", args: "stable", privileged: false
    config.vm.provision :shell, path: "install-ruby.sh", args: "2.2.4", privileged: false


    # Network
    config.vm.network :forwarded_port, host: 4000, guest: 4000, auto_correct: true

    # Syncing folder(s)
    config.vm.synced_folder "../sassyinphilly", "/sassyinphilly", :nfs => false

end