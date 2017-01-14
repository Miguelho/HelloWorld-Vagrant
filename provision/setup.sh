#!/bin/bash

echo "setup initializing...."

echo "tty: muestra el nombre de fichero de la terminal de la entrada estándar"

echo "StdOut redirigido a /dev/null"


echo "Installing Git"

	apt-get install git -y > /dev/null

echo "Installing Nginx"
	apt-get install nginx -y > /dev/null
	
	
echo "Update Advanced Packaging Tool APT database"

	apt-get install python-software-properties build-essential -y > /dev/null
	add-apt-repository ppa:ondrej/php5 -y > /dev/null
	apt-get update -y > /dev/null
	
echo "Installing debconf-utils"

	apt-get install debconf-utils -y > /dev/null
	
	
echo "Installing MySQL"

	debconf-set-selections <<< "mysql-server mysql-server/root_password password 12345"
		
	debconf-set-selections <<< "mysql-server mysql-server/root_password_again password 12345"
	
	apt-get install mysql-server -y
	
	apt-get install mysql-client -y
	