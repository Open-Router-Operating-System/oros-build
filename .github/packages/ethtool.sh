#!/bin/sh
set -e

cd packages/ethtool
git clone https://salsa.debian.org/kernel-team/ethtool -b debian/1%6.6-1
cd ethtool && sudo mk-build-deps --install --tool "apt-get --yes --no-install-recommends"
dpkg-buildpackage -uc -us -tc -b
mv ../*.deb ../..
