#!/bin/bash

# CHROME_VERSION="google-chrome-stable"
CHROME_MAJOR_VERSION=$(google-chrome --version | sed -E "s/.* ([0-9]+)(\.[0-9]+){3}.*/\1/")
echo "Chrome major version detected: $CHROME_MAJOR_VERSION"
# Find the latest chromedriver version compatible with the detected Chrome version
# https://googlechromelabs.github.io/chrome-for-testing/
CHROME_DRIVER_VERSION="119.0.6045.105"
echo "Using chromedriver version: $CHROME_DRIVER_VERSION"

wget —-no-verbose -O /tmp/chromedriver_linux64.zip "https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/$CHROME_DRIVER_VERSION/linux64/chromedriver-linux64.zip"

unzip /tmp/chromedriver_linux64.zip -d /tmp
mkdir -p /opt/selenium
mv /tmp/chromedriver-linux64/chromedriver "/opt/selenium/chromedriver-$CHROME_DRIVER_VERSION"
chmod 755 "/opt/selenium/chromedrver-$CHROME_DRIVER_VERSION"
ln -fs "/opt/selenium/chromedriver-$CHROME_DRIVER_VERSION" /usr/bin/chromedriver
