#!/bin/sh
set -e

cd packages/aws-gateway-load-balancer-tunnel-handler
git clone https://github.com/aws-samples/aws-gateway-load-balancer-tunnel-handler
cd aws-gateway-load-balancer-tunnel-handler
git checkout f78058a && cd ..
./build.sh
mv *.deb ..
