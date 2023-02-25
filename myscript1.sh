#!/bin/bash

#Occupancy percentage output
y=$(df -h /dev/sdb1 --output=pcent)
echo "Folder full percentage = $y"

#Disk busy check
#1.Retrieving the number of busy disks
busy=${y:5:3}

#2.Check if more
x=70
if (( busy > x ));
then 
cd /home/pavel/LOG
pwd
tar -czvf projects.tar.gz /home/pavel/LOG
tar -xzvf projects.tar.gz -C /home/pavel/BACKUP
rm /home/pavel/LOG/*
fi

