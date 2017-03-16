wget http://www.xunsearch.com/download/xunsearch-full-latest.tar.bz2

tar -xjf xunsearch-full-latest.tar.bz2

cd xunsearch-full-1.3.0/
sh setup.sh

cd $prefix ; bin/xs-ctl.sh restart


＃如遇到问题:  bufferevent_openssl.c:60:10: fatal error: 'openssl/bio.h' file not found
＃解决方法： 
＃sudo ln -s /usr/local/opt/openssl/include/openssl/  /usr/local/include/openssl
