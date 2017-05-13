FROM resin/raspberry-pi3-python:2.7

# Enable systemd init system
ENV INITSYSTEM on

## Install miscellanous libraries
#RUN apt-get update && apt-get install -yq --no-install-recommends \
#    python-numpy \
#    libjpeg-dev \
#    zlib1g-dev \
#    libpng12-dev \
#    usbutils \
#    libfreetype6 \
#    libfontconfig \
#    sysstat \
#    vim \
#    wireless-tools \
#    unzip \
#    && apt-get clean && rm -rf /var/lib/apt/lists/*
#
## Set the working directory
#WORKDIR /usr/src/app
#
## Install last version 2.5.10 of libgphoto2 and gphoto2
#RUN curl -SLO  "https://github.com/gonzalo/gphoto2-updater/archive/2.5.10.zip" \
#    && echo "3b9a88590318118c7e0dcf6dda03a58ccc43bf5eb56c8a5b4304fd835ae0bdf7 2.5.10.zip" | sha256sum -c - \
#    && unzip "2.5.10.zip" \
#    && rm -rf "2.5.10.zip" \
#    && cd "gphoto2-updater-2.5.10" \
#    && chmod +x "gphoto2-updater.sh" \
#    && ./gphoto2-updater.sh \
#    && cd .. \
#    && rm -rf "gphoto2-updater-2.5.10"
#
## -- Start of resin-wifi-connect section -- #
#
## Install node
#ENV NODE_VERSION 6.9.1
#RUN curl -SLO "http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-armv6l.tar.gz" \
#    && echo "0b30184fe98bd22b859db7f4cbaa56ecc04f7f526313c8da42315d89fabe23b2  node-v$NODE_VERSION-linux-armv6l.tar.gz" | sha256sum -c - \
#    && tar -xzf "node-v$NODE_VERSION-linux-armv6l.tar.gz" -C /usr/local --strip-components=1 \
#    && rm "node-v$NODE_VERSION-linux-armv6l.tar.gz" \
#    && npm config set unsafe-perm true -g --unsafe-perm \
#    && rm -rf /tmp/*
#
## Set the device type environment variable using Dockerfile templates
#ENV DEVICE_TYPE=%%RESIN_MACHINE_NAME%%
#
#RUN apt-get update && apt-get install -yq --no-install-recommends \
#    dnsmasq \
#    hostapd \
#    iproute2 \
#    iw \
#    libexpat-dev \
#    rfkill \
#    && apt-get clean && rm -rf /var/lib/apt/lists/*
#
#ENV RESIN_WIFI_CONNECT_VERSION 2.0.8
#
#RUN curl -SL "https://github.com/Postcard/resin-wifi-connect/archive/v$RESIN_WIFI_CONNECT_VERSION.tar.gz" \
#    | tar xzC /usr/src/app/ \
#    && mv resin-wifi-connect-$RESIN_WIFI_CONNECT_VERSION resin-wifi-connect \
#    && cd resin-wifi-connect \
#    && JOBS=MAX npm install --unsafe-perm --production \
#    && npm cache clean \
#    && ./node_modules/.bin/bower --allow-root install \
#    && ./node_modules/.bin/bower --allow-root cache clean \
#    && ./node_modules/.bin/coffee -c ./src
#
## -- End of resin-wifi-connect section -- #





