#!/bin/sh
set -e

cd packages/openvpn-otp
git clone https://github.com/evgeny-gridasov/openvpn-otp -b master
./build-openvpn-otp.sh
mv *.deb ..
