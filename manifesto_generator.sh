#!/bin/bash

echo "Answer the following questions:"
read -p "1. Open-source tool you use: " TOOL
read -p "2. What does freedom mean to you: " FREEDOM
read -p "3. What will you build: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto.txt"

echo "On $DATE, I believe in open source." > $OUTPUT
echo "$TOOL represents $FREEDOM for developers." >> $OUTPUT
echo "In the future, I will build $BUILD and share it freely." >> $OUTPUT

echo "Manifesto saved in $OUTPUT"
cat $OUTPUT
