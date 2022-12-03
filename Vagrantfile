Vagrant.configure("2") do |config|
  config.vm.define "vm1" do |vm1|
    vm1.vm.hostname = "vm1"
    vm1.vm.box = "ubuntu/focal64"
    vm1.vm.network "private_network", ip: "192.168.33.10"
    vm1.vm.network "forwarded_port", guest: 80, host: 8888


    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "vm1"
      vb.gui = false
      vb.memory = "1024"
    end

    vm1.vm.provision "shell", run: "always",  inline: <<-SHELL
        echo "Hello from the Ubuntu VM"
	    	cp -rav /vagrant/myfile/sysinfo.sh  /root/
        cp -rav /vagrant/myfile/mycron  /etc/cron.d/
        chmod 600 -R /etc/cron.d/
        chown -R root:root /etc/cron.d/mycron

    SHELL
  end
  
end
