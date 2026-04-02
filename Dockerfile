FROM ubuntu:latest

# Installation notwendiger Pakete
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

# Schritt-für-Schritt Ausführung um Syntax-Fehler zu vermeiden
RUN curl -sSf https://sshx.io | sh

# Startet sshx und hält den Container mit tail offen
CMD ["sh", "-c", "sshx run & tail -f /dev/null"]
