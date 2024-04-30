#!/bin/sh
set -e

cd packages/netfilter
git clone https://salsa.debian.org/pkg-netfilter-team/pkg-libnftnl.git -b debian/1.2.6-2
cd pkg-libnftnl && sudo mk-build-deps --install --tool "apt-get --yes --no-install-recommends"
dpkg-buildpackage -uc -us -tc -b
cd ..

git clone https://salsa.debian.org/pkg-netfilter-team/pkg-nftables.git -b debian/1.0.9-1
cd pkg-nftables && sudo dpkg -i ../libnftnl*.deb && sudo mk-build-deps --install --tool "apt-get --yes --no-install-recommends"
../build.py
ls -la
ls -la ..
mv ../*.deb ../..
