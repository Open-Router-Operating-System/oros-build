#!/bin/sh
set -e

cd packages/ndppd
 git clone https://salsa.debian.org/debian/ndppd -b debian/0.2.5-6
./build.sh
mv *.deb ..
