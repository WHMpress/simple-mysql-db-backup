#!/bin/sh
# all db separate files
for customerdb in `mysql -e "show databases" -B -N`
do
        mysqldump $customerdb | gzip > /home2/00mysqlbackup/$customerdb.sql.gz
done
