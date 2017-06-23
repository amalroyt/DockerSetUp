#!/bin/sh

# Run the MySQL container, with a database named 'users' and credentials
# for a users-service user which can access it.

echo "Dumping docker data..."  
docker exec -i database mysql -uroot -proot < rolloutScriptMOMv1.4.sql 
#docker exec -i database mysql -uroot -proot < dropDatabase.sql

echo "LOGS " + docker logs database

echo "Data Dump done"   