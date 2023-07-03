Vagrant.configure("2") do |config|
  config.vm.provision "shell", path: "vm_config.sh"
  config.vm.box = "alvistack/kubernetes-1.24"
  config.vm.box_check_update = false
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 80, host: 1234
  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 4566, host: 4566, host_ip: "127.0.0.1"  
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.network "public_network", bridge: "Intel(R) Wi-Fi 6 AX201 160MHz"
  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
    vb.cpus = "2"
  end
end