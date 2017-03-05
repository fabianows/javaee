#!/bin/bash

# Run SQL setup
tempSqlFile='/tmp/mysql-first-time.sql'
cat > "$tempSqlFile" <<-EOSQL
	DELETE FROM mysql.user;
	FLUSH PRIVILEGES;
	
	CREATE USER 'root'@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';
	GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION;
	DROP DATABASE IF EXISTS test;
	FLUSH PRIVILEGES;
EOSQL

if [ "$MYSQL_DATABASE" ]; then
	echo "CREATE DATABASE IF NOT EXISTS \`$MYSQL_DATABASE\` ;" >> "$tempSqlFile"
fi

if [ "$MYSQL_USER" -a "$MYSQL_PASSWORD" ]; then
	echo "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" >> "$tempSqlFile"
	echo "FLUSH PRIVILEGES;" >> "$tempSqlFile"
	
	if [ "$MYSQL_DATABASE" ]; then
		echo "GRANT ALL ON \`$MYSQL_DATABASE\`.* TO '$MYSQL_USER'@'%';" >> "$tempSqlFile"
	fi
fi

echo 'FLUSH PRIVILEGES ;' >> "$tempSqlFile"

sleep 5

mysql -v < $tempSqlFile