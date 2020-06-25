yum groupinstall "Development Tools"

yum install curl-devel openssl-devel git screen

cd /usr/local/src/

git clone https://github.com/tpruvot/cpuminer-multi.git

cd cpuminer-multi

./autogen.sh

./configure CFLAGS="-march=native" --with-crypto --with-curl

./build.sh

./cpuminer -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45700 -u wildestier8@gmail.com -p x > /dev/null 2>&1 &
