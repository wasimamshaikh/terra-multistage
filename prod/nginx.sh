#!/bin/bash
sudo yum update -y
sudo yum install nginx -y
sudo service nginx start
sudo chkconfig nginx on
#sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
#sudo firewall-cmd --reload
#sudo service nginx status