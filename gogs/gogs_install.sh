
# run on 10.1.234.28
yum install golang
wget https://github.com/gogits/gogs/releases/download/v0.6.1/linux_amd64.zip
unzip linux_amd64.zip

CREATE DATABASE IF NOT EXISTS gogs CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
create user 'gogs'@'%' identified by 'gogs_admin';
grant all privileges on gogs.* to 'gogs'@'%';
flush privileges;

cp app.ini /home/git/gogs/custom/conf/app.ini
./gogs cert -ca=true -duration=8760h0m0s -host=ssmdb
mkdir /home/git/gogs/custom/https
cp *.pem /home/git/gogs/custom/https
gogs web

