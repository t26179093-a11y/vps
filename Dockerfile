FROM ubuntu:latest

# Installation notwendiger Pakete
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

# WICHTIG: Die URL muss auf /get enden!
RUN curl -sSf https://sshx.io | sh

# Startet sshx im Hintergrund und hält den Container am Laufen
CMD ["sh", "-c", "sshx run & tail -f /dev/null"]
