FROM resin/raspberry-pi2-node:6

RUN apt-get update && apt-get install -y \
    python \
    python-dev \
    python-setuptools \
    python-numpy \
    pkg-config \
    gcc \
    g++ \
    make \
    build-essential \
    tcl8.5 \
    unzip \
    tar \
    wget \
    bzip2 \
    libjpeg-dev \
    zlib1g-dev \
    libpng12-dev \
    usbutils \
    libfreetype6 \
    libfontconfig \
    git \
    dnsmasq \
    hostapd \
    iproute2 \
    iw \
    libdbus-1-dev \
    libexpat-dev \
    rfkill \
    sysstat \
    procmail \
    vim \
    wireless-tools \
    && rm -rf /var/lib/apt/lists/* \
    && easy_install pip==9.0.1
    && wget --no-check-certificate https://github.com/gonzalo/gphoto2-updater/archive/2.5.10.zip && \
    && unzip 2.5.10.zip \
    && cd gphoto2-updater-2.5.10 \
    && chmod +x gphoto2-updater.sh \
    && ./gphoto2-updater.sh





