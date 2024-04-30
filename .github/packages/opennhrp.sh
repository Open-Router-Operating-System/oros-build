#!/bin/sh
set -e

cd packages/opennhrp
git clone https://git.code.sf.net/p/opennhrp/code opennhrp
cd opennhrp
git checkout 613277f && cd ..
./build.sh
mv *.deb ..
