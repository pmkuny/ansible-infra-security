Vagrant.configure("2") do |config|
  config.vm.define "vagrant"
  config.vm.box = "centos/7"
  config.vm.network "public_network"
  config.vm.provider "virtualbox" do |vb|
      vb.name = "vagrant"
      vb.gui = false
      vb.memory = "1024"
  end
  config.vm.provision :ansible do |ansible|
    ansible.playbook = "site.yml"
  end
end
