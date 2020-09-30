#!/bin/bash
#compares old and new schedules

old=$(cat ./last.txt)
new=$(./watchsch.sh)
flat=$(echo $new)
echo "new: $new"

if [ "$new" != "$old" ]
then
    echo "not equal"
fi

echo -e "$new" > ./last.txt
