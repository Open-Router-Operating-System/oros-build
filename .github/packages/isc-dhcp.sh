cd packages/isc-dhcp
git clone https://salsa.debian.org/debian/isc-dhcp -b debian/4.4.3-P1-4
cd isc-dhcp && sudo mk-build-deps --install --tool "apt-get --yes --no-install-recommends" && cd ..
./build.sh
mv *.deb ..
