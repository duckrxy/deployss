#!/bin/bash

sudo apt-get update
sudo apt-get --assume-yes install python-pip
yes | sudo pip install shadowsocks
sudo rm -f ./shadowsocks.json
wget https://raw.githubusercontent.com/duckrxy/deployss/master/shadowsocks.json
echo "input shadowsocks password:"
read sspwd
echo $sspwd
sed -i "s/\"password\":\"[a-zA-Z1-9~!@#$%^&*()_+-=]*\"/\"password\":\"${sspwd}\"/" shadowsocks.json
sudo cp -f shadowsocks.json /etc/shadowsocks.json
sudo ssserver -c /etc/shadowsocks.json -d stop
sudo ssserver -c /etc/shadowsocks.json -d start
