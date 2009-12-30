rm -r tmp
mkdir tmp
cp -r dpkg/DEBIAN tmp
mkdir -p tmp/usr/bin/
cp bin/giternal tmp/usr/bin/
mkdir -p tmp/usr/lib/ruby/1.8
cp -r lib/* tmp/usr/lib/ruby/1.8
dpkg-deb -b tmp tmp/giternal.deb
