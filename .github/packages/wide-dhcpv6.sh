#!/bin/sh
set -e

cd packages/wide-dhcpv6
git clone https://salsa.debian.org/debian/wide-dhcpv6 -b debian/20080615-23
cd wide-dhcpv6 && sudo mk-build-deps --install --tool "apt-get --yes --no-install-recommends" && cd ..
./build.sh
mv *.deb ..
