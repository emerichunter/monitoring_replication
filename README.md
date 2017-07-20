# monitoring_replication
=======================

Tool to monitor data loss during replication failover in PG with pg10 client


On master 
CREATE DATABASE monitoring_replication ;

`psql -d monitoring_replication -f monitoring_time.sql` to create table




`./micro_insert.sh` to launch ctrl+c to exit
`./reset_monitoring.sh` to truncate and restart


`insert_monitoring_time.sql` to insert TIMESTAMP this can be used as test like `psql -h hostname -d monitoring_replication -f insert_monitoring_time.sql`


Config in .sh file for connexion
 
Works with pg10 (and higher ?) client only 
