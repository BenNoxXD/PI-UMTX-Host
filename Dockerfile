FROM python:latest

RUN apt-get install -y git python3 wget
RUN git clone https://github.com/idlesauce/PS5-UMTX-Jailbreak/
WORKDIR /PS5-UMTX-Jailbreak
RUN wget https://raw.githubusercontent.com/idlesauce/PS5-Exploit-Host/refs/heads/main/simple_server.py
RUN rm -r document/en/ps5/payloads
RUN git clone https://github.com/BenNoxXD/PI-UMTX-Host/
RUN cp -r PI-UMTX-Host/payload_map.js document/en/ps5
RUN cp -r PI-UMTX-Host/payloads document/en/ps5/
RUN rm -r PI-UMTX-Host

CMD ["python", "simple_server.py"]