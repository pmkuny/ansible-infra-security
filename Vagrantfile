Vagrant.configure("2") do |config|
  config.vm.define "vagrant"
  config.vm.box = "centos/7"
  config.vm.provider "virtualbox" do |vb|
      vb.name = "vagrant"
      vb.gui = false
      vb.memory = "1024"
  end
  config.vm.provision :ansible do |ansible|
    ansible.playbook = "site.yml"
    ansible.compatibility_mode = "2.0"
  end
end
