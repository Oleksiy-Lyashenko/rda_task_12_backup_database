#!/bin/bash

export DB_USER=backup
export DB_PASSWORD=P@ssw0rd

mysqldump -u "$DB_USER" -p"$DB_PASSWORD" --databases ShopDB --result-file=ShopDBReserve_backup.sql --no-create-db
mysql -u "$DB_USER" -p"$DB_PASSWORD" ShopDBReserve < ShopDBReserve_backup.sql

mysqldump -u "$DB_USER" -p"$DB_PASSWORD" --databases ShopDB --result-file=ShopDBDevelopment_backup.sql --no-create-info
mysql -u "$DB_USER" -p"$DB_PASSWORD" ShopDBDevelopment < ShopDBDevelopment_backup.sql