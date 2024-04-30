#!/bin/sh
set -e

cd packages/dropbear
git clone https://salsa.debian.org/debian/dropbear.git -b debian/2022.83-1+deb12u1
cd dropbear && sudo mk-build-deps --install --tool "apt-get --yes --no-install-recommends" && cd ..
./build.sh
mv *.deb ..
