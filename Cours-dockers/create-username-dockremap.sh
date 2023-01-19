#!/bin/bash

###############################################################
#  AUTEUR:   Xavier
#
#  DESCRIPTION:  création d'un user spécific pour docker
###############################################################


sudo groupadd -g 500000 dockremap && 
sudo groupadd -g 501000 dockremap-user && 
sudo useradd -u 500000 -g dockremap -s /bin/false dockremap && 
sudo useradd -u 501000 -g dockremap-user -s /bin/false dockremap-user

sudo echo "dockremap:500000:65536" >> /etc/subuid && 
sudo echo "dockremap:500000:65536" >>/etc/subgid

echo "
  {
   \"userns-remap\": \"default\"
  }
" > sudo /etc/docker/daemon.json

sudo systemctl daemon-reload && sudo systemctl restart docker
