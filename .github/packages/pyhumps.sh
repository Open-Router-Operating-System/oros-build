#!/bin/sh
set -e

cd packages/pyhumps
git clone https://github.com/nficano/humps.git -b v3.8.0
cd humps && python setup.py --command-packages=stdeb.command bdist_deb
mv deb_dist/*.deb ../..
