FROM balenalib/raspberrypi3-python:3.8

# Enable systemd init system
ENV INITSYSTEM on

# Install miscellanous libraries
RUN apt-get update && apt-get install -yq --no-install-recommends \
    libjpeg-dev \
    zlib1g-dev \
    libpng12-dev \
    usbutils \
    libfreetype6 \
    libfontconfig \
    sysstat \
    vim \
    wireless-tools \
    unzip \
    gcc \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip \
    && pip install numpy==1.21.2

# Set the working directory
WORKDIR /usr/src/app

# Install last version 2.5.10 of libgphoto2 and gphoto2
RUN curl -SLO  "https://github.com/gonzalo/gphoto2-updater/archive/2.5.10.zip" \
    && echo "3b9a88590318118c7e0dcf6dda03a58ccc43bf5eb56c8a5b4304fd835ae0bdf7 2.5.10.zip" | sha256sum -c - \
    && unzip "2.5.10.zip" \
    && rm -rf "2.5.10.zip" \
    && cd "gphoto2-updater-2.5.10" \
    && chmod +x "gphoto2-updater.sh" \
    && ./gphoto2-updater.sh \
    && cd .. \
    && rm -rf "gphoto2-updater-2.5.10"