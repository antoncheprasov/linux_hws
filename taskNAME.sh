cd /opt/280223_m/Anton_Cheprasov/
nano taskANTON.sh

#!/bin/bash
for ((i=1; i<=10; i++))
do
  filename=$(date +"%d%m%y")_$i
  touch "$filename"
done


[ec2-user@ip-172-31-33-20 Anton_Cheprasov]$ chmod u+x taskANTON.sh
[ec2-user@ip-172-31-33-20 Anton_Cheprasov]$ ls -l
total 40
-rw-rw-r-- 1 ec2-user ec2-user  12 May  2 12:16 anton1.txt
-rw-rw-r-- 1 ec2-user ec2-user   6 May  4 12:53 awk.txt
-rw-rw-r-- 1 ec2-user ec2-user  50 May  4 12:34 cpuinfo.txt
-rwxrw-r-- 1 ec2-user ec2-user  36 May  9 12:08 cron.sh
-rwxrw-r-- 1 ec2-user ec2-user 179 Apr 27 19:44 myscript.sh
-rw-rw-r-- 1 ec2-user ec2-user  39 May  9 12:48 output.txt
-rwxrw-r-- 1 ec2-user ec2-user 187 May  6 17:48 script11.sh
-rwxrw-r-- 1 ec2-user ec2-user  83 May  4 12:52 script11.txt
-rwxrw-r-- 1 ec2-user ec2-user 352 May  6 18:03 sleeper.sh
-rwxrw-r-- 1 ec2-user ec2-user  98 May 10 18:16 taskANTON.sh
[ec2-user@ip-172-31-33-20 Anton_Cheprasov]$ crontab -e
*/15 * * * * /opt/280223_m/Anton_Cheprasov/taskANTON.sh
