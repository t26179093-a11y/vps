FROM ubuntu:latest

# Installiere tmate und Abhängigkeiten
RUN apt-get update && apt-get install -y \
    tmate \
    curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

# Startet tmate im "foreground" Modus (-F), damit der Container aktiv bleibt.
# Die Option -S erstellt einen lokalen Socket.
CMD ["tmate", "-F"]
