#!/bin/sh
set -e

cd packages/telegraf
git clone https://github.com/influxdata/telegraf.git -b v1.28.3
./build.sh
mv telegraf/build/dist/*.deb ..
