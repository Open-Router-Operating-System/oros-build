#!/bin/sh
set -e

cd packages/pam_tacplus
git clone https://github.com/kravietz/pam_tacplus-debian pam_tacplus-debian
cd pam_tacplus-debian && git checkout 50c6fd7 && cd ..
git clone https://github.com/kravietz/pam_tacplus
cd pam_tacplus && git checkout 7908a7f && cd ..
./build.sh
mv *.deb ..
