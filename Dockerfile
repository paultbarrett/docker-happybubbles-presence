FROM debian
MAINTAINER Paul Barrett  "pbarrett@bitsystems.com.au"

# Based on presence_rpi3_install.sh scrip provided https://github.com/happy-bubbles/presence/releases/download/1.6.2/presence_rpi3_install.sh
# A big thanks to Happy Bubbles for creating this - https://www.happybubbles.tech/presence/


# Update APT
RUN apt-get update

# Install dependencies
RUN apt-get install mosquitto mosquitto-clients

RUN mkdir -p /opt/presence \
    && cd /opt/presence \
    && wget https://github.com/happy-bubbles/presence/releases/download/1.6.2/presence_linux_arm.zip \
    && 

# Web Server
EXPOSE 3000/tcp
