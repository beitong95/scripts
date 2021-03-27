#! /bin/bash

sudo yum install -y yum-utils

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install -y docker-ce docker-ce-cli containerd.io
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker $USER
sudo curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
sudo python get-pip.py
sudo pip install docker-py
sudo yum install -y nc
newgrp docker 
