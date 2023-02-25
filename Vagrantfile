# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Machine1 -kalilinux- setup
  config.vm.define "fbid" do |vm1|
    # Vagrant box from fbid
    vm1.vm.box = "kalilinux/rolling"
    # Hostname configuration
    vm1.vm.hostname = 'FBID-PracticaFINAL'
    # Virtualbox fbid machine configuration
    vm1.vm.provider "virtualbox" do |vb_vm1|
      vb_vm1.gui = true
      vb_vm1.memory = 4096
      vb_vm1.cpus = 6
      vb_vm1.customize ["modifyvm", :id,"--name", "FBID-PracticaFINAL"]
    end
    vm1.ssh.insert_key = false
    # Network configuration
    vm1.vm.network "private_network", ip: "192.168.56.50", :netmask => "255.255.255.248", virtualbox__intnet: "RED_PRUEBAS"
    # Port configuration
    vm1.vm.network "forwarded_port", guest: 22, host: 2220 #SSH
    vm1.vm.network "forwarded_port", guest: 5000, host: 8084 #HTTP
    vm1.vm.network "forwarded_port", guest: 8080, host: 8085 #HTTP
    # Provisioning configuration
    vm1.vm.provision "file", source: "Provision", destination: "/home/vagrant"
    vm1.vm.provision "shell", path: "Provision/script.sh"
  end

end
