# install dependencies
sudo apt-get install git -y
sudo apt-get install python -y
# remove old version
sudo systemctl stop ps5host
sudo systemctl disable ps5host
rm /etc/systemd/system/ps5host.service
cd /home
sudo rm -r /PS5-UMTX-Jailbreak
# download new version
git clone https://github.com/idlesauce/PS5-UMTX-Jailbreak
cd PS5-UMTX-Jailbreak
wget https://raw.githubusercontent.com/idlesauce/PS5-Exploit-Host/refs/heads/main/simple_server.py
# create a service for autostart
cat > /etc/systemd/system/ps5host.service <<- "EOF"
[Unit]
Description=PS5 UMTX Host idlesauce

[Service]
WorkingDirectory=/home/PS5-UMTX-Jailbreak/
ExecStart=/usr/bin/python3 simple_server.py

[Install]
WantedBy=multi-user.target
EOF
# enable the service
sudo systemctl start ps5host
sudo systemctl enable ps5host
