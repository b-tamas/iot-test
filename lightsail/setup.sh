#!/bin/bash

set -o nounset
set -o errexit
set -o pipefail
IFS=$'\n\t'

sudo apt update

sudo apt install software-properties-common
sudo apt-add-repository ppa:ansible/ansible

sudo apt update
sudo apt install -y ansible

#https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-18-04



#SSH key setup
ssh-keygen –t ecdsa 
ssh-copy-id ubuntu@localhost


echo "[localhost]">> /etc/ansible/hosts
echo "localhost ansible_host=127.0.0.1">> /etc/ansible/hosts




