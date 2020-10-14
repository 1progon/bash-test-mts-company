#!/bin/bash

HOST=localhost
USER=root
PASSWORD=222
TABLE=employees

cat ./select-boss.sql | mysql -h $HOST -u$USER -p$PASSWORD -D$TABLE -t;