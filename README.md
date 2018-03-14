## This Bash-script will backup data from Bash home folder to the local drive C:\ at 3 a.m. every day.

# Here are the steps for creating the script in Bash on Ubuntu for Windows

1.Create a file in your home directory in Bash with the "touch" command.
2.Open and edit it with a text editor - preferably Vim :)
...
3...See the script code with its comments..
..
4.Save the file and exit the text editor.

# You can now test if the script work well.

## To make the script run by automatically at a certain time, "cron can be used". 
## Cron is a daemon which executes scheduled commands in Bash.

6.Edit the crontable with the command "sudo crontab -e". 
7.You may have to choose an editor for cron first time you use it - choose Vim preferably.
# This will open the crontable for the root user - all users have their own crontable
# and their own cron daemon. This guide will apply for changes for the root user.

8.Define the time interval for the backups and the path to your script in the crontable.
9.Save and exit.

10.Start the cron with the command "sudo service cron start".

# If you end the current Bash sessions, cron service will stop and you will have to start it again if needed.



# Although you can create a batch file which will start up with Windows to start the cron service.
# To do this:

11.Create a batch-file e.g. "linux.bat" in the Startup folder in Windows.
# This folder can be accessed by typing shell:startup in Windows run.

12.Edit the file and paste "C:\Windows\System32\bash.exe -c 'while [ true ]; do sudo /usr/sbin/cron -f; done'"
13.Save and exit.
14: Remove the password for the user, so the batch can run without needing the password.

# You no longer have to do anything now, the script is fully-automated and will run at the time defined in crontab.
