#!/bin/bash


MONITORING_DB=monitoring_replication
PORT_1=5432
PORT_2=$PORT_1
PORT_3=$PORT_1

HOST_1=PCYYYPF6
HOST_2=PCYYYPFF
HOST_3=PCYYYPFE

CONNINFO="postgresql://"$HOST_1":"$","$HOST_2":"$PORT_2","$HOST_3":"$PORT_3"/"$MONITORING_DB"?target_session_attrs=read-write"

 

/usr/pgsql-10/bin/psql -d $CONNINFO -c "truncate table monitoring_time ;  ALTER SEQUENCE monitoring_time_pk_seq RESTART WITH 1 ;"
