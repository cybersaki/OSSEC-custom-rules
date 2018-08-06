#This will delete the log files
cd /var/ossec/logs/alerts
rm -rf *
cd ..
cd archives
rm -rf *
cd ../../queue/diff
rm -rf *

#This will delete the sql logs
MYSQL_ROOT="root"
MYSQL_PASS="secqureone"

mysql --user="$MYSQL_ROOT" --password="$MYSQL_PASS" ossec -e "truncate table alert"

#This will restart the process again
/var/ossec/bin/ossec-control restart

#This will clear everything
clear
