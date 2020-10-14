#!/bin/bash

USER=root
PASSWORD=222
TABLE=employees
DUMP_FILE=dumpDB.sql

rm $DUMP_FILE;
mysqldump -u $USER -p$PASSWORD  $TABLE > $DUMP_FILE
