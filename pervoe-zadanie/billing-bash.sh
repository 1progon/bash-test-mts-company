#!/bin/bash

#DATA
HOSTNAME="1.1.1.1"
USER="billing"
PASSWORD="billing"
DATABASE="billing"
TABLE="clients"

QUERY="SELECT client_id FROM $TABLE ORDER BY client_id ASC LIMIT 50;"

DATE="$(date +'%d-%m-%Y  %H:%M:%S')"

#DB Connect, Select 50 rows, add into select.log
printf "\n---- Start log at %s ----\n"  "$DATE" | tee -a select.log

SECONDS=0
mysql -h $HOSTNAME  -u$USER -D$DATABASE -p$PASSWORD <<EOF >> select.log
$QUERY
EOF
duration=$SECONDS

DATE="$(date +'%d-%m-%Y  %H:%M:%S')"
echo "End of log" "$DATE" | tee -a select.log

if [ $duration -gt 0 ]; then
  echo "$(($duration / 60)) минут и $(($duration % 60)) секунд выполнялось задание"
  else
    echo "Задание выполнилось быстро!!!"
fi


