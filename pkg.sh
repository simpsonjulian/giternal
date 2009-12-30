set -e
sudo rm -r tmp
mkdir tmp
cp -r debian/DEBIAN tmp
mkdir -p tmp/usr/bin/
cp bin/giternal tmp/usr/bin/
chmod 0755 tmp/usr/bin/giternal
mkdir -p tmp/usr/lib/ruby/1.8
mkdir -p tmp/usr/share/doc/giternal
mkdir -p tmp/usr/share/man/man1
cp debian/giternal.man tmp/usr/share/man/man1/giternal.1
gzip -9 tmp/usr/share/man/man1/giternal.1
cp LICENSE tmp/usr/share/doc/giternal
cp debian/copyright tmp/usr/share/doc/giternal
cp -r lib/* tmp/usr/lib/ruby/1.8
sudo chown -R root:root tmp/*
dpkg-deb -b tmp giternal.deb
scp giternal.deb 192.168.1.6:/tmp/giternal.deb
