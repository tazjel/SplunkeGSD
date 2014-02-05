
default: 
	echo "Please run: \n1.  make build \n2.  make install \n3.  make test \n4.  make clean"

build: 
	clear
	sudo apt-get update
	sudo apt-get -y upgrade
	sudo apt-get -y install openssh-server
	sudo apt-get -y install python
	sudo apt-get -y install python-dev
	sudo apt-get -y install apache2
	sudo apt-get -y install libapache2-mod-wsgi
	sudo apt-get -y install libapache2-mod-proxy-html
	wget http://web2py.googlecode.com/hg/scripts/setup-web2py-ubuntu.sh
	chmod +x setup-web2py-ubuntu.sh
	sudo ./setup-web2py-ubuntu.sh
	sudo git clone https://github.com/Smellen/SplunkeGSD
	sudo chown -R www-data:www-data SplunkeGSD/

install: 
	clear
	sudo apt-get update
	sudo apt-get -y upgrade
	sudo apt-get -y install openssh-server
	sudo apt-get -y install python
	sudo apt-get -y install python-dev
	sudo apt-get -y install apache2
	sudo apt-get -y install libapache2-mod-wsgi
	sudo apt-get -y install libapache2-mod-proxy-html
	wget http://web2py.googlecode.com/hg/scripts/setup-web2py-ubuntu.sh
	chmod +x setup-web2py-ubuntu.sh
	sudo ./setup-web2py-ubuntu.sh
	sudo git clone https://github.com/Smellen/SplunkeGSD
	sudo chown -R www-data:www-data SplunkeGSD/

test: 
	clear 
	python TestControllerDefault.py
	
clean: 	
	clear
	cd /home/www-data/web2py/applications
	echo $pwd
	sudo rm -r SplunkeGSD
