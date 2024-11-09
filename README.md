# PI-UMTX-Host
Host the UMTX PS5 Exploit on a Raspberry Pi or an any Debian based OS

## Install:

<br>

```sh
sudo apt-get update && sudo apt-get upgrade -y
rm install.sh
wget https://raw.githubusercontent.com/BenNoxXD/PI-UMTX-Host/refs/heads/main/install_ps5_server.sh
chmod 777 install_ps5_server.sh
./install_ps5_server.sh
```

<br>


# You can also create a service to run the host on boot

Note that you may have to change the user name

<br>

```sh
sudo nano /etc/systemd/system/ps5host.service
```

<br>

Paste the following into the newly created file: 

<br>

```sh
[Unit]
Description=PS5 UMTX Host idlesauce

[Service]
WorkingDirectory=/home/pi/PI-UMTX-Host/PS5-UMTX-Jailbreak/
ExecStart=/usr/bin/python3 simple_server.py

[Install]
WantedBy=multi-user.target
```

<br>

And now start and enable the service: 

<br>

```sh
sudo systemctl start ps5host
sudo systemctl enable ps5host
```

<br>