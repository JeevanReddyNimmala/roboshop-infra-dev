#!bin/bash

dnf install ansible -y
cd /home/ec2-user
git clone https://github.com/JeevanReddyNimmala/roboshop-ansible-v3.git
cd roboshop-ansible-v3
git pull
ansible-playbook -e component=mongodb main.yaml