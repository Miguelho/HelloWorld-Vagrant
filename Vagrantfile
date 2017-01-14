Vagrant.configure("2") do |config|


config.vm.box = "ubuntu/trusty64"


# NETWORK
#Si esta ocupado el 80, entonces puede accederse en el 8931
#auto_correct evita colisiones de puerto.
#config.vm.network :forwarded_port, guest: 80, host: 8931, auto_correct:true
#config.vm.network :hostonly, "192.168.33.10"
config.vm.network "private_network", ip: "192.168.50.4"

# SYNC
# host machine folder to be shared, target folder in VM, crea automaticamente,  owner y grupo del directorio compartido en la VM
# la mayoria de web-servers utiliza www-data como el propietario de acceso a los ficheros.
config.vm.synced_folder "./", "/var/www", create: true, group: "www-data", owner: "www-data"

# SPECIFIC CONFIG
# configuracion de la VM, propiedades que podran verse en Virtualbox GUI https://www.virtualbox.org/manual/ch08.html#vboxmanage-modifyvm
config.vm.provider "virtualbox" do |v|
	v.name = "MySQL Test Vagrant"
	#v.customize ["modifiyvm", :id, "--memory", "1024"]
end
	
	
config.vm.provision "shell" do |s|
	s.path = "provision/setup.sh"
end


end