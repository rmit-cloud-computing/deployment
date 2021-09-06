#!/bin/bash
# Install Docker
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
# Logout to register usergroup edit then login and verify
docker info

# Install Docker Compose
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
# Verify Installation
docker-compose version

# Install git in your EC2 instance
sudo yum install git -y

# Clone the repository

