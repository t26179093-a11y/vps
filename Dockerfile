# Nutze die aktuellste Ubuntu Version
FROM ubuntu:latest

# Installiere curl und ca-certificates (notwendig für HTTPS-Downloads)
RUN apt-get update && apt-get install -y \
    curl docker.io neofetch \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Setze das Arbeitsverzeichnis
WORKDIR /root

# Der Befehl startet sshx. 
# 'tail -f /dev/null' hält den Container am Laufen, falls sshx im Hintergrund bleibt.
CMD sh -c "curl -sSf https://sshx.io | sh -s run & tail -f /dev/null"
