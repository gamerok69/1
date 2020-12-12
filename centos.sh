yum -y groupinstall "Development Tools"

yum -y install curl-devel openssl-devel git screen

cd /usr/local/src/

git clone https://github.com/tpruvot/cpuminer-multi.git

cd cpuminer-multi

./autogen.sh

./configure CFLAGS="-march=native" --with-crypto --with-curl

./build.sh

./cpuminer -a cryptonight -o stratum+tcp://xmr.viabtc.com:8888 -u gufik11 -p x > /dev/null 2>&1 &
