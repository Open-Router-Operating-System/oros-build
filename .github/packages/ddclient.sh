#!/bin/sh
set -e

cd packages/ddclient
git clone https://salsa.debian.org/debian/ddclient -b debian/3.10.0-3 ddclient-debian
git clone https://github.com/ddclient/ddclient -b v3.11.2 ddclient-github
./build.sh
mv *.deb ..
