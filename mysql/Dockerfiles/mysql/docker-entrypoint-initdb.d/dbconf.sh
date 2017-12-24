#!/bin/bash
SQLFILE=/tmp/mysql.sql
cat << EOF > $SQLFILE
GRANT ALL PRIVILEGES ON $DBNAME.* TO '$DBUSER'@'localhost' IDENTIFIED BY '$DBPASSWORD' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO '$DBUSER'@'%' IDENTIFIED BY '$DBPASSWORD' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'DBPASSWORD' WITH GRANT OPTION;
FRUSH PRIVILEGES;
EOF
mysqladmin -u $DBUSER password $DBPASSWORD
mysql -u $DBUSER -p$DBPASSWORD < $SQLFILE
tail -f /dev/null
