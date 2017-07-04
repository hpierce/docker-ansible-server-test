#!/bin/bash
if [[ `/usr/bin/mysql -uroot  < /var/www/test_db/test_employees_sha.sql | egrep "^CRC|^count" | awk '{print $2}' | grep -c OK` -eq "2" ]]
then
	echo "DB is good"
else
	echo "DB is bad"
fi

