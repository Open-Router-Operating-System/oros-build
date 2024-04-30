#!/bin/sh
set -e

cd packages/hostap
git clone https://salsa.debian.org/debian/wpa -b debian/2%2.10-12
git clone git://w1.fi/srv/git/hostap.git
cd hostap && git checkout 6b9c86466 && cd ..
./build.sh
mv *.deb ..
