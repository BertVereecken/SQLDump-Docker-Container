#!/bin/bash
docker exec -i $1 sh -c 'exec mysql -uroot -ptest' < $2.sql