#!/bin/bash

# Update and upgrade system
sudo apt-get update -y
sudo apt-get full-upgrade -y

# Install Python 3 and PIP
sudo apt-get install python3-pip -y

# Install Docker
sudo apt-get install docker.io -y

# Install other required packages
sudo apt-get install libcurl4-openssl-dev -y
sudo apt-get install libssl-dev -y
sudo apt-get install jq -y
sudo apt-get install ruby-full -y
sudo apt-get install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev -y
sudo apt-get install build-essential libssl-dev libffi-dev python-dev -y
sudo apt-get install python-setuptools -y
sudo apt-get install libldns-dev -y
sudo apt-get install python-dnspython -y
sudo apt-get install git -y
sudo apt-get install rename -y
sudo apt-get install xargs -y
sudo apt-get install nodejs -y
sudo apt-get install npm -y
sudo apt-get install python3-pip -y
sudo apt-get install neofetch -y
sudo apt-get install screen -y
sudo apt-get install speedtest-cli -y
sudo apt-get install wpscan -y
sudo pip3 install uro
sudo apt-get install golang-go -y

# VulnLab
apt install docker.io
sudo systemctl enable docker
docker run --restart=always -d -p 2222:80 zxxsnxx/vulnlabyavuzlar

# Download and install Go
wget https://go.dev/dl/go1.21.3.linux-amd64.tar.gz
sudo tar -xvf go1.21.3.linux-amd64.tar.gz
sudo mv go /usr/local

# Set Go environment variables
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# Add Go environment variables to bash profile
echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile

# Source bash profile
source ~/.bash_profile
cd

# Install nucleifuzzer
git clone https://github.com/0xKayala/NucleiFuzzer.git
cd NucleiFuzzer
sudo chmod +x install.sh
./install.sh
nucleifuzzer -h
cd

# Install nuclei
go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest

# Install subfinder
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

# Install httpx
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

# Install dalfox
go install github.com/hahwul/dalfox/v2@latest
cd go/bin
mv * /usr/bin
cd

# Install dirsearch
git clone https://github.com/maurosoria/dirsearch.git

# Install paramspider
git clone https://github.com/devanshbatham/paramspider
cd paramspider
pip install .
cd

# Install XSpear
git clone https://github.com/hahwul/XSpear.git
cd XSpear
gem install XSpear
cd

# Install sqlmap
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd

# Awesome Bug Bounty
git clone https://github.com/0xJin/awesome-bugbounty-builder.git
cd awesome-bugbounty-builder/
chmod +x awesome-bugbounty-build.sh
./awesome-bugbounty-build.sh
cd

# Screen hunting
mkdir bounty
cd ok
mv scan.sh ~/bounty
cd ~/bounty
screen -S ok

# Installation complete
echo "Installation complete!"
