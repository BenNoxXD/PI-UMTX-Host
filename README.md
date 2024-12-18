# PI-UMTX-Host
Host the UMTX PS5 Exploit on a Raspberry Pi or an any Debian based OS with your custom config

## Install:

<br>

```sh
sudo apt-get update
curl -s https://raw.githubusercontent.com/BenNoxXD/PI-UMTX-Host/refs/heads/main/install_ps5_server.sh | sudo bash
```

<br>


## Docker
You can also run is bundled it a Docker Container

<br>

```sh
docker build -t ps5-host .
docker run -d -t -p 8888:8000 --name ps5server --restart always ps5-host
```

<br>
