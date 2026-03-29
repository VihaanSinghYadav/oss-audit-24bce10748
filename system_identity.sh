#!/bin/bash
# Author: Vihaan Singh Yadav

STUDENT_NAME="Vihaan Singh Yadav"
SOFTWARE="MySQL"

KERNEL=$(uname -r)
USER=$(whoami)
UPTIME=$(uptime -p)

echo "================================"
echo "Open Source Audit - $STUDENT_NAME"
echo "Software: $SOFTWARE"
echo "Kernel: $KERNEL"
echo "User: $USER"
echo "Uptime: $UPTIME"
echo "================================"
