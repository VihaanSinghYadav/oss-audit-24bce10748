#!/bin/bash

PACKAGE="mysql-server"

if dpkg -l | grep -q $PACKAGE; then
 echo "MySQL is installed on this system."
 dpkg -l | grep $PACKAGE
else
 echo "MySQL is NOT installed."
fi

case $PACKAGE in
 mysql-server) echo "MySQL: An open-source relational database system." ;;
 apache2) echo "Apache: Web server software." ;;
 vlc) echo "VLC: Media player." ;;
 firefox) echo "Firefox: Web browser." ;;
 *) echo "Unknown package." ;;
esac
