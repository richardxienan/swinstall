
# gogs
docker -H 10.1.234.28:5555 run -d --name=gogs -p 3000:3000 -v /git:/git --restart=on-failure:3 gogs

# mariadb
docker -H 10.1.234.28:5555 run -d --name=mariadb -p 3306:3306 -v /mariadb:/mariadb --restart=on-failure:3 mariadb

# scm manager
