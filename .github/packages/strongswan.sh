#!/bin/sh
set -e

cd packages/strongswan
git clone https://salsa.debian.org/debian/strongswan.git -b debian/5.9.11-2
# Allow build python3-vici
sed -i 's/dpkg-buildpackage -uc -us -tc -b -d//' build.sh
sed -i 's/+CONFIGUREARGS_VYOS := --disable-warnings/+CONFIGUREARGS_VYOS := --disable-warnings --enable-python-eggs/' patches/0004-VyOS-disable-options-enabled-by-Debian-that-are-unus.patch
./build.sh && cd strongswan
dpkg-buildpackage -uc -us -b -d
mv ../*.deb ../..
cd src/libcharon/plugins/vici/python
python setup.py --command-packages=stdeb.command bdist_deb
mv deb_dist/*.deb ../../../../../../..
