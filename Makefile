#
# AppFlow - Makefile
#
#
# Tasks
#
vagrant-xenial:
	mkdir -p ~/Downloads/Software
	mkdir -p ~/Downloads/Software/Vagrant-Boxes
	wget -c -O ~/Downloads/Software/Vagrant-Boxes/xenial64.box https://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-vagrant.box
	ln -s -f ~/Downloads/Software/Vagrant-Boxes .
	vagrant plugin install vagrant-cachier
	# https://github.com/mitchellh/vagrant/issues/1673
	vagrant plugin install vagrant-vbguest

vagrant-trusty:
	mkdir -p ~/Downloads/Software
	mkdir -p ~/Downloads/Software/Vagrant-Boxes
	cd ~/Downloads/Software/Vagrant-Boxes &&  wget -c http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box  && mv trusty-server-cloudimg-amd64-vagrant-disk1.box trusty64.box && cd ~/Documents/webdev/appflow
	# pushd ~/Downloads/Software/Vagrant-Boxes && wget -c -q http://files.vagrantup.com/precise64.box > /dev/null && wget -c -q http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box > /dev/null && mv trusty-server-cloudimg-amd64-vagrant-disk1.box trusty64.box && wget -c http://files.wunki.org/freebsd-10.0-amd64-wunki.box > /dev/null && popd
	ln -s -f ~/Downloads/Software/Vagrant-Boxes .
	vagrant plugin install vagrant-cachier
	# https://github.com/mitchellh/vagrant/issues/1673
	vagrant plugin install vagrant-vbguest

vagrant-centos:
	mkdir -p ~/Downloads/Software
	mkdir -p ~/Downloads/Software/Vagrant-Boxes
	cd ~/Downloads/Software/Vagrant-Boxes && wget -c http://cloud.centos.org/centos/7/vagrant/x86_64/images/CentOS-7-Vagrant-1509-x86_64-01.box  && mv CentOS-7-Vagrant-1509-x86_64-01.box centos64.box && cd ~/Documents/webdev/appflow
	ln -s -f ~/Downloads/Software/Vagrant-Boxes .
	vagrant plugin install vagrant-cachier
	vagrant plugin install vagrant-vbguest

vagrant: vagrant-xenial

