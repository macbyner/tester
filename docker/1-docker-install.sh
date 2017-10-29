#!/bin/bash
#
echo " 1. remove any old docker lying around "
read -p "Press [Enter] key to continue..."
#
echo "from book"
sudo apt-get remove lxc.docker* docker.io*
echo "from docker web site docker ce install"
sudo apt-get remove docker docker-engine docker.io
#
echo " 2. do apt-get update "
read -p "Press [Enter] key to continue..."
#
sudo apt-get update
#
echo " 3. Install packages to allow apt to use a repository over HTTPS "
echo " from docker website"
read -p "Press [Enter] key to continue..."
#
sudo apt-get install apt-transport-https ca-certificates -y
#
#
echo " 4. do apt-key "
echo " from the book "
read -p "Press [Enter] key to continue..."
#
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo " apt-gey rc code is $?"
#
echo " 5. create docker.list "
read -p "Press [Enter] key to continue..."
#
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > docker.list
#
#
echo " 6. mv docker.list to sources.list.d "
read -p "Press [Enter] key to continue..."
#
sudo mv docker.list /etc/apt/sources.list.d/docker.list
#
#
echo " 7. now do the update after the sources.list.d change "
read -p "Press [Enter] key to continue..."
#
sudo apt-get update
#
echo " 7. apt-get install linux-image-extra for UFS "
read -p "Press [Enter] key to continue..."
#
#
echo " running kernel_release.sh to see what release ofthe kernel "
echo " we aere dealing with to see if we can use UFS or "
read -p "Press [Enter] key to continue..."
./kernel_release.sh
#
#
sudo apt-get install linux-image-extra-$(uname -r) -y
echo "rc code for apt-get install of UFS is $?"
#
#
echo " 7. apt-get install docker-engine "
read -p "Press [Enter] key to continue..."
#
sudo apt-get install docker-engine -y
echo "rc code for apt-get install of docker-engine is $?"
#
sudo service docker start

sudo groupadd docker &>/dev/null
sudo usermod -aG docker $USER

echo "Installation complete."
echo "You must log out and back in to be able to run docker commands without sudo privileges"
echo "You can test docker now by running: sudo docker run hello-world"
