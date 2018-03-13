#!/bin/bash

#Backup
cp -brv /home/Aziz /mnt/c/Bash_backup/

#Go to the folder for backups
cd /mnt/c/Bash_backup/

#Zip and rename the backup
zip -r $(date +%d-%m-%Y)_backup Aziz

#Remove the source folder
rm -r Aziz




