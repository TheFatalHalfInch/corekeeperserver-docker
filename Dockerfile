#download base image to work with
## server install commands
#sudo apt-get update
#sudo add-apt-repository multiverse; sudo dpkg --add-architecture i386; sudo apt update
#sudo apt install steamcmd xvfb libxi6
#sudo useradd -mrU -s /usr/sbin/nologin corekeeper-server
#sudo -u corekeeper-server -s /bin/bash -c "/usr/games/steamcmd +force_install_dir /home/corekeeper-server +login anonymous +app_update 1007 validate +app_update 1963720 validate +quit"
#sudo nano /etc/systemd/system/corekeeper-server.service
#sudo systemctl daemon-reload
#sudo systemctl start corekeeper-server.service
#sudo systemctl enable corekeeper-server.service