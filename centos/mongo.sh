1: vi  /etc/yum.repos.d/mongodb-org-2.6.repo

2: 
add  follow  text: 

[mongodb-org-3.4]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.4/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.4.asc

3:  
yum install mongodb-org  -y

4: sudo service mongod start

5:  sudo chkconfig mongod on

# 参考地址：  https://docs.mongodb.com/manual/tutorial/install-mongodb-on-red-hat/




