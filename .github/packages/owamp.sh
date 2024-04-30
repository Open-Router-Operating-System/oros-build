#!/bin/sh
set -e

cd packages/owamp
git clone https://github.com/perfsonar/owamp -b v4.4.6
cd owamp
dpkg-buildpackage -us -uc -tc -b -Pnocheck
mv ../*.deb ../..
