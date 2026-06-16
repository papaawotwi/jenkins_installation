#!/bin/bash


#Description: Jenkins server installation
#when: June 2026




echo "Jenkins installation starting..."

sudo rpm --import https://yum.corretto.aws/corretto.key
sudo curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo
sudo yum install -y java-21-amazon-corretto-devel
# Add required dependencies for the jenkins package
sudo yum install java-21-amazon-corretto -y
sudo yum install jenkins -y
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins



echo "jenkins is now successfully installed please access the browser on port 8080"
exit 0
