#!/bin/sh

sudo apt-get update	
sudo apt install build-essential gnupg2 gcc make gnupg2 unzip -y < "/dev/null"

sudo wget https://pkg.cloudflareclient.com/uploads/cloudflare_warp_2022_4_235_1_amd64_be90f473b0.deb
sudo dpkg -i cloudflare_warp_2022_4_235_1_amd64_be90f473b0.deb
sudo apt --fix-broken install -y < "/dev/null"

sudo systemctl enable --now warp-svc.service
yes | warp-cli set-mode warp+doh
warp-cli register


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
yes | warp-cli enable-always-on
sudo reboot



