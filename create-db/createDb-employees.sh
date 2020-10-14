#!/bin/bash

HOST=localhost
USER=root
#PASSWORD=222  # можно вводить при запуске, а можно захардкодить сюда, чтобы не вводить каждый раз


#cat ./db.sql | mysql -h $HOST -u$USER -p$PASSWORD;
cat < ./create-db.sql | mysql -h $HOST -u$USER -p;
