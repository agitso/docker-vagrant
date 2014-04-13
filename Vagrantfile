# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	config.vm.hostname = "docker"
	config.vm.box = "hashicorp/precise64"

	config.vm.network :private_network, ip: "192.168.33.10"

	config.vm.synced_folder ".", "/vagrant", id: "vagrant-root", disabled: true
	config.vm.synced_folder "..", "/sites", id: "sites", :nfs => true

	config.vm.provider "vmware_fusion" do |v|
		v.gui = false
		v.vmx["memsize"] = "2048"
		v.vmx["numvcpus"] = "2"
	end
	
	config.vm.provision :shell, :path => "bootstrap.sh"
end