# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "devops-kurs"
  config.vm.box_url = "https://s3-eu-west-1.amazonaws.com/bekk-devops/devops-kurs.box"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
    puppet.module_path = "modules"
  end

  config.vm.define :web do |host_config|
    host_config.vm.forward_port 80, 8585
    host_config.vm.forward_port 8080, 8580
    host_config.vm.forward_port 8081, 8581
    host_config.vm.host_name = "web.lan"
  end
  
  config.vm.define :db do |host_config|
    host_config.vm.forward_port 80, 8586
    host_config.vm.host_name = "db.lan"
  end
end
