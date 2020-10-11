#!/bin/bash
docker exec $1 sh -c 'exec mysqldump --all-databases -uroot -ptest' > $2.sql 