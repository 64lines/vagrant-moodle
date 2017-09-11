# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "moodle-vm"
  config.vm.network :forwarded_port, guest: 80, host: 80, auto_correct: false
  config.vm.network :forwarded_port, guest: 8080, host: 8080, auto_correct: false
  config.vm.network :forwarded_port, guest: 3306, host: 3306, auto_correct: false
  config.vm.synced_folder ".", "/vagrant"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  config.vm.define :moodle,primary: true do |moodle|
      moodle.vm.provision "shell", path: "config/config.sh"
      moodle.vm.provision "shell", path: "mysql/config.sh"
      moodle.vm.provision "shell", path: "moodle/config.sh"
  end
end
