#!/bin/bash

set -e;

# sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
apt-get update
# sudo apt-get install build-essential python3-dev python3-pip python3-setuptools python3-wheel python3-cffi libcairo2 libpango-1.0-0 libpangocairo-1.0-0 libgdk-pixbuf2.0-0 libffi-dev shared-mime-info
pip3 install --upgrade setuptools
pip3 install weasyprint
# sudo apt-get install xvfb libfontconfig libstdc++6
# wget https://downloads.wkhtmltopdf.org/0.12/0.12.5/wkhtmltox_0.12.5-1.xenial_amd64.deb
# sudo chown _apt wkhtmltox_0.12.5-1.xenial_amd64.deb
# sudo apt install ./wkhtmltox_0.12.5-1.xenial_amd64.deb
# xvfb-run wkhtmltopdf ./index.html cv.pdf
weasyprint ./index.html ./cv.pdf
