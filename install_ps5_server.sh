# install dependencies
sudo apt-get install git -y
sudo apt-get install python3 -y
# remove old version
sudo systemctl stop ps5host
sudo systemctl disable ps5host
rm /etc/systemd/system/ps5host.service
cd /usr/local
sudo rm -r /PS5-UMTX-Jailbreak
# download new version
git clone https://github.com/idlesauce/PS5-UMTX-Jailbreak
cd PS5-UMTX-Jailbreak
wget https://raw.githubusercontent.com/idlesauce/PS5-Exploit-Host/refs/heads/main/simple_server.py
rm -r document/en/ps5/payloads
git clone https://github.com/BenNoxXD/PI-UMTX-Host/
cp -r PI-UMTX-Host/payload_map.js document/en/ps5
cp -r PI-UMTX-Host/payloads document/en/ps5/
rm -r PI-UMTX-Host
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
sudo reboot
