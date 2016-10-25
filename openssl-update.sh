openssl version
yum info openssl
cd /usr/src
wget https://www.openssl.org/source/openssl-1.0.2-latest.tar.gz
tar -zxf openssl-1.0.2-latest.tar.gz
cd openssl-1.0.2a
./config
make
make test
make install
# If the old version is still displayed or installed before, please make acopy of openssl bin file
mv /usr/bin/openssl /root/
ln -s /usr/local/ssl/bin/openssl /usr/bin/openssl
