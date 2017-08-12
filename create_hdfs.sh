##!/bin/bash

#Edge nodes
rmdir landing1/ib/$1/{marker,metadata} 2> /dev/null
rmdir landing1/ib/$1 2> /dev/null
rmdir landing1/ib 2> /dev/null
rmdir landing1 2> /dev/null

mkdir landing1
mkdir landing1/ib
mkdir landing1/ib/$1
mkdir landing1/ib/$1/{marker,metadata}

echo "Edge node created successfully"

#Landing zone
hdfs dfs -rmdir /user/jkuppuswamy/landing1/ib/$1/{marker,metadata} 2> /dev/null
hdfs dfs -rmdir /user/jkuppuswamy/landing1/ib/$1 2> /dev/null
hdfs dfs -rmdir /user/jkuppuswamy/landing1/ib 2> /dev/null
hdfs dfs -rmdir /user/jkuppuswamy/landing1 2> /dev/null

hdfs dfs -mkdir /user/jkuppuswamy/landing1
hdfs dfs -mkdir /user/jkuppuswamy/landing1/ib
hdfs dfs -mkdir /user/jkuppuswamy/landing1/ib/$1
hdfs dfs -mkdir /user/jkuppuswamy/landing1/ib/$1/{marker,metadata}
echo "Landing zone created successfully"

#Technical zone

hdfs dfs -rmdir /user/jkuppuswamy/data/tsz/$1/{int,pub,con,cpi}  2> /dev/null
hdfs dfs -rmdir /user/jkuppuswamy/data/tsz/$1 2> /dev/null
hdfs dfs -rmdir /user/jkuppuswamy/data/tsz 2> /dev/null
hdfs dfs -rmdir /user/jkuppuswamy/data 2> /dev/null

hdfs dfs -mkdir -p /user/jkuppuswamy/data
hdfs dfs -mkdir -p /user/jkuppuswamy/data/tsz
hdfs dfs -mkdir -p /user/jkuppuswamy/data/tsz/$1
hdfs dfs -mkdir -p /user/jkuppuswamy/data/tsz/$1/{int,pub,con,cpi}
echo "Technical zone created successfully"

#Enterprise zone

hdfs dfs -rmdir /user/jkuppuswamy/data/edz/$1/{int,pub,con,cpi}/snapshots 2> /dev/null
hdfs dfs -rmdir /user/jkuppuswamy/data/edz/$1/{int,pub,con,cpi} 2> /dev/null
hdfs dfs -rmdir /user/jkuppuswamy/data/edz/$1 2> /dev/null
hdfs dfs -rmdir /user/jkuppuswamy/data/edz 2> /dev/null
hdfs dfs -rmdir /user/jkuppuswamy/data 2> /dev/null

hdfs dfs -mkdir -p /user/jkuppuswamy/data
hdfs dfs -mkdir -p /user/jkuppuswamy/data/edz
hdfs dfs -mkdir -p /user/jkuppuswamy/data/edz/$1
hdfs dfs -mkdir -p /user/jkuppuswamy/data/edz/$1/{int,pub,con,cpi}
hdfs dfs -mkdir -p /user/jkuppuswamy/data/edz/$1/{int,pub,con,cpi}/snapshots
echo "Enterprise zone created successfully"

#Consumer zone

hdfs dfs -rmdir /user/jkuppuswamy/data/crz/$2/{int,pub,con,cpi}/snapshots 2> /dev/null
hdfs dfs -rmdir /user/jkuppuswamy/data/crz/$2/{int,pub,con,cpi} 2> /dev/null
hdfs dfs -rmdir /user/jkuppuswamy/data/crz/$2 2> /dev/null
hdfs dfs -rmdir /user/jkuppuswamy/data/crz 2> /dev/null
hdfs dfs -rmdir /user/jkuppuswamy/data 2> /dev/null

hdfs dfs -mkdir -p /user/jkuppuswamy/data
hdfs dfs -mkdir -p /user/jkuppuswamy/data/crz
hdfs dfs -mkdir -p /user/jkuppuswamy/data/crz/$2
hdfs dfs -mkdir -p /user/jkuppuswamy/data/crz/$2/{int,pub,con,cpi}
echo "Consumer zone created successfully"

echo 'HDFS folders created successfully'