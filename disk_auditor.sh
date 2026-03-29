#!/bin/bash

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
 if [ -d "$DIR" ]; then
  PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
  SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
  echo "$DIR => Permissions: $PERMS | Size: $SIZE"
 else
  echo "$DIR does not exist"
 fi
done

# MySQL config check
MYSQL_DIR="/etc/mysql"

if [ -d "$MYSQL_DIR" ]; then
 echo "MySQL config directory exists:"
 ls -ld $MYSQL_DIR
else
 echo "MySQL config directory not found"
fi
