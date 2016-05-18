!/bin/bash
cd 
wget  http://219.232.239.243/uploads/csft/4.0/coreseek-4.1-beta.tar.gz

tar xzvf  coreseek-4.1-beta.tar.gz

cd coreseek-4.1-beta

cd mmseg-3.2.14

./bootstrap

./configure --prefix=/usr/local/mmseg3

make && make install
cd ..
cd csft-4.1
sh buildconf.sh

 ./configure --prefix=/usr/local/coreseek  --without-unixodbc --with-mmseg --with-mmseg-includes=/usr/local/mmseg3/include/mmseg/ --with-mmseg-libs=/usr/local/mmseg3/lib/ --with-mysql

 make && make install

 cd ..
 
