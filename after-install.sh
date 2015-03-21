#####################################################################
##
## after-install.sh
##
## A script to be executed after install a linux distro debian-like or
## that uses .deb packages and apt-get utility
##
## It's a way to install some util packages
## 
## CHANGELOG:
## 1.0 - Script created
## 1.1 - Direct download
## 1.2 - Change for free softwares
##
## @LeandroRebelo
####################################################################
#!/bin/sh

### PPA / SOURCES ###
sudo add-apt-repository -y ppa:libreoffice/ppa

### Update packs ###
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade


### Download via apt ###
# l1 - Mozilla Foundation
# l2 - Editors and libreoffice
# l3 - Rar and other archiving utilities
# l4 - Infos about hard, system. partitions and process
# l5 - Programming
# l6 - Build essentials
# l7 - Remote connection
# l8 - Utilities
sudo apt-get install \
	firefox thunderbird \
	vim gedit libreoffice \
	unace p7zip-rar sharutils rar arj lunzip lzip \
	hardinfo htop iptraf gparted unetbootin whois \
	git gitk openjdk-7-jre apache2 mysql-server mysql-client php5 python \
	gcc make build-essential \
	openssh \
	brasero transmission gtkpod \


### Direct download ###
# peco v0.2.11
if which peco > /dev/null; then
	echo "peco is already installed"
else
	rm -f /tmp/peco_linux_amd64.tar.gz && \
	wget https://github.com/peco/peco/releases/download/v0.2.11/peco_linux_amd64.tar.gz -P /tmp && \
	tar -zxf /tmp/peco_linux_amd64.tar.gz -C /tmp && \
	sudo cp -p /tmp/peco_linux_amd64/peco /usr/bin && \
	rm -rf /tmp/peco_linux_amd64/ && \
	rm -f /tmp/peco_linux_amd64.tar.gz && \
	echo "peco v0.2.11 was installed"
fi
