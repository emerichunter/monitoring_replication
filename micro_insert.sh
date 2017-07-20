#!/bin/bash


TIME_RES=10000 # time resolution in µs 

MONITORING_DB=monitoring_replication


PORT_1=5432
PORT_2=$PORT_1
PORT_3=$PORT_1

HOST_1=PCYYYPF6
HOST_2=PCYYYPFF
HOST_3=PCYYYPFE

CONNINFO="postgresql://"$HOST_1":"$","$HOST_2":"$PORT_2","$HOST_3":"$PORT_3"/"$MONITORING_DB"?target_session_attrs=read-write"

while :
do
	echo "Pour arreter le script presser [Ctrl +C]"
	#/usr/pgsql-10/bin/psql -d "postgresql://PCYYYPF6:5432,PCYYYPFF:5432,PCYYYPFE:5432/monitoring_replication?target_session_attrs=read-write"  -f insert_monitoring_time.sql ;
	/usr/pgsql-10/bin/psql -d $CONNINFO -f insert_monitoring_time.sql ;
	#echo "test" ; exit 0 ## TEST
	usleep $TIME_RES ; 
done
