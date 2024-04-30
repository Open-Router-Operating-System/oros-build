#!/bin/sh
set -e

cd packages/keepalived
git clone https://salsa.debian.org/debian/pkg-keepalived.git -b debian/1%2.2.8-1
cd pkg-keepalived && sudo mk-build-deps --install --tool "apt-get --yes --no-install-recommends"
../build.py
mv ../*.deb ../..
