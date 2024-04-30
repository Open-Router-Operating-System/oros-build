#!/bin/sh
set -e

cd packages/radvd
git clone https://github.com/radvd-project/radvd
cd radvd
git checkout f2de4764559 && cd ..
./build.sh
mv *.deb ..
