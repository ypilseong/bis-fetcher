#!/bin/bash

CHROME_VERSION=$(google-chrome --product-version)
echo "Chrome version detected: $CHROME_VERSION"
# Find the latest chromedriver version compatible with the detected Chrome version
# https://googlechromelabs.github.io/chrome-for-testing/
CHROME_DRIVER_VERSION="119.0.6045.105"
echo "Using chromedriver version: $CHROME_DRIVER_VERSION"

wget —-no-verbose -O /tmp/chromedriver_linux64.zip "https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/$CHROME_DRIVER_VERSION/linux64/chromedriver-linux64.zip"

mkdir -p /opt
unzip /tmp/chromedriver_linux64.zip -d /opt
chmod 755 /opt/chromedriver-linux64/chromedrver
ln -fs /opt/chromedriver-linux64/chromedriver /usr/bin/chromedriver
rm /tmp/chromedriver_linux64.zip
