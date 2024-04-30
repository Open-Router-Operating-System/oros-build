#!/bin/sh
set -e

cd packages/pmacct
git clone https://salsa.debian.org/debian/pmacct.git -b debian/1.7.7-1
cd pmacct && sudo mk-build-deps --install --tool "apt-get --yes --no-install-recommends" && sudo apt-get remove git -y
../build.py
apt-get install -y git
mv ../*.deb ../..
