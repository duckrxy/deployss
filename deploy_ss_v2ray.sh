#!/bin/bash

sudo apt update
sudo apt install shadowsocks-libev -y
wget https://github.com/shadowsocks/v2ray-plugin/releases/download/v1.2.0/v2ray-plugin-linux-amd64-v1.2.0.tar.gz
tar xvf v2ray-plugin-linux-amd64-v1.2.0.tar.gz
sudo mv v2ray-plugin_linux_amd64 /usr/bin/v2ray-plugin
sudo bash -c 'echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf'
sudo bash -c 'echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf'
sudo sysctl -p

sysctl net.ipv4.tcp_available_congestion_control
lsmod | grep bbr

# after updating the config.json, need to restart the service twice