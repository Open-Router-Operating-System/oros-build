cd packages/frr
git clone https://github.com/CESNET/libyang.git -b v2.1.148
cd libyang && pipx run apkg build -i && find pkg/pkgs -type f -name *.deb -exec mv -t .. {} +
cd ..

git clone https://github.com/rtrlib/rtrlib.git -b v0.8.0
cd rtrlib && sudo mk-build-deps --install --tool "apt-get --yes --no-install-recommends"
dpkg-buildpackage -uc -us -tc -b
cd ..

git clone https://github.com/FRRouting/frr.git -b stable/9.1
cd frr && sudo mk-build-deps --install --tool "apt-get --yes --no-install-recommends" && cd ..
cd ..
sudo apt-get -o Dpkg::Options::="--force-overwrite" install -y ./libyang2*.deb python3-sphinx:native
./build-frr.sh
mv *.deb ..
