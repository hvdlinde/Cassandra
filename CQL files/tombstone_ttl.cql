# Title     SQL2CQL Training
# Subject   Tombstone and TTL
# Autor     João Villa-Lobos
# Autor     Hans van der Linde
# Version   1

# prepare
vi cassandra.yaml
tombstone_warn_threshold: 10
tombstone_failure_threshold: 25

# Clean up completely
DROP TABLE IF EXISTS sql2cql.tombstone;

# Clean up Table content
TRUNCATE TABLE sql2cql.tombstone;

# Create env
create KEYSPACE IF NOT EXISTS sql2cql WITH replication = {'class': 'NetworkTopologyStrategy' , 'DC1' : 1};


CREATE TABLE sql2cql.tombstone (
    partyid int ,
    name text,
    account int,
    id int,
    agreement blob,
    PRIMARY KEY (partyid,name)
)
WITH gc_grace_seconds = 0;



# INSERT data 
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (1,'four',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (1,'five',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (1,'six',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (1,'seven',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (1,'eight',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (1,'nine',10,20);

INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (2,'four',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (2,'five',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (2,'six',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (2,'seven',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (2,'eight',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (2,'nine',10,20);

INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (3,'four',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (3,'five',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (3,'six',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (3,'seven',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (3,'eight',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (3,'nine',10,20);

INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (4,'four',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (4,'five',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (4,'six',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (4,'seven',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (4,'eight',10,20);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (4,'nine',10,20);

# check out the data TABLE scan (no primary key specified)
SELECT * FROM sql2cql.tombstone;

# UPDATE some data
UPDATE sql2cql.tombstone SET account=null where partyid=1 and name='eight';
UPDATE sql2cql.tombstone SET id=null where partyid=1 and name='five';

# check out the data TABLE scan (no primary key specified)
SELECT * FROM sql2cql.tombstone;

# INSERT data 
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (9,'four',null,null);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (9,'five',null,null);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (9,'six',null,null);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (9,'seven',null,null);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (9,'eight',null,null);
INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (9,'nine',null,null);


# check out the data WHERE clause (minimal req)
SELECT * FROM sql2cql.tombstone WHERE partyid = 9;
Warnings :
Read 6 live rows and 12 tombstone cells for query SELECT * FROM sql2cql.tombstone WHERE partyid = 9 LIMIT 100 (see tombstone_warn_threshold)

# contents in the log /var/log/cassandra/system.log
WARN  [ReadStage-2] 2018-11-15 14:16:21,937  ReadCommand.java:565 - Read 6 live rows and 12 tombstone cells for query SELECT * FROM sql2cql.tombstone WHERE partyid = 9 LIMIT 100 (see tombstone_warn_threshold)

# DELETE data 
DELETE account,id FROM sql2cql.tombstone where partyid=4 AND name='four';
DELETE account,id FROM sql2cql.tombstone where partyid=4 AND name='five';
DELETE account,id FROM sql2cql.tombstone where partyid=4 AND name='six';
DELETE account,id FROM sql2cql.tombstone where partyid=4 AND name='seven';
DELETE account,id FROM sql2cql.tombstone where partyid=4 AND name='eight';
DELETE account,id FROM sql2cql.tombstone where partyid=4 AND name='nine';

# check out the data with primary key and IN clause
SELECT * FROM sql2cql.tombstone WHERE partyid IN (4, 9);
Warnings :
Read 6 live rows and 12 tombstone cells for query SELECT * FROM sql2cql.tombstone WHERE partyid = 4 LIMIT 100 (see tombstone_warn_threshold)
Read 6 live rows and 12 tombstone cells for query SELECT * FROM sql2cql.tombstone WHERE partyid = 9 LIMIT 94 (see tombstone_warn_threshold)

# contents in the log /var/log/cassandra/system.log
WARN  [ReadStage-2] 2018-11-15 14:18:31,851  ReadCommand.java:565 - Read 6 live rows and 12 tombstone cells for query SELECT * FROM sql2cql.tombstone WHERE partyid = 9 LIMIT 100 (see tombstone_warn_threshold)
WARN  [ReadStage-2] 2018-11-15 14:19:59,394  ReadCommand.java:565 - Read 6 live rows and 12 tombstone cells for query SELECT * FROM sql2cql.tombstone WHERE partyid = 4 LIMIT 100 (see tombstone_warn_threshold)
WARN  [ReadStage-2] 2018-11-15 14:19:59,404  ReadCommand.java:565 - Read 6 live rows and 12 tombstone cells for query SELECT * FROM sql2cql.tombstone WHERE partyid = 9 LIMIT 94 (see tombstone_warn_threshold)


# check out the data TABLE scan (no primary key specified)
SELECT * FROM sql2cql.tombstone ;
ReadFailure: Error from server: code=1300 [Replica(s) failed to execute read] message="Operation failed - received 0 responses and 1 failures" info={'failures': 1, 'received_responses': 0, 'error_code_map': {'172.30.0.2': '0x0001'}, 'required_responses': 1, 'consistency': 'ONE'}


# check out the data WHERE clause (minimal req)
SELECT * FROM sql2cql.tombstone WHERE partyid = 1;

# contents in the log /var/log/cassandra/system.log
ERROR [ReadStage-2] 2018-11-15 14:20:34,081  StorageProxy.java:2076 - Scanned over 26 tombstones during query 'SELECT * FROM sql2cql.tombstone LIMIT 100' (last scanned row partion key was ((9), six)); query aborted


# FLUSH data from MemTable to sstables on disk
nodetool flush sql2cql

# Examine the contents of the created sstable
# i.e. dse@node1:~/resources/cassandra/tools/bin$ ./sstabledump /var/lib/cassandra/data/sql2cql/tombstone-560f57f0e8de11e89798df5483c2a0ca/mc-2-big-Data.db
sstabledump /var/lib/cassandra/data/sql2cql/tombstone-xxxxxx


## TTL
SELECT name,account,TTL(account) FROM sql2cql.tombstone WHERE partyid = 1;
# UPDATE the TABLE data with TTL
UPDATE sql2cql.tombstone USING TTL 60 SET account = 10 WHERE partyid = 1 AND name = 'four';
UPDATE sql2cql.tombstone USING TTL 60 SET account = 10 WHERE partyid = 1 AND name = 'five';
UPDATE sql2cql.tombstone USING TTL 60 SET account = 10 WHERE partyid = 1 AND name = 'six';
UPDATE sql2cql.tombstone USING TTL 300 SET account = 10 WHERE partyid = 1 AND name = 'seven';
UPDATE sql2cql.tombstone USING TTL 300 SET account = 10 WHERE partyid = 1 AND name = 'eight';
UPDATE sql2cql.tombstone USING TTL 300 SET account = 10 WHERE partyid = 1 AND name = 'nine';


# check out the data WHERE clause (minimal req)
SELECT * FROM sql2cql.tombstone WHERE partyid = 1;

# check out the TTL on the DATA WHERE clause (minimal req)
SELECT name,account,TTL(account) FROM sql2cql.tombstone WHERE partyid = 1;

# FLUSH data from MemTable to sstables on disk
nodetool flush sql2cql

# Examine the contents of the created sstable
# i.e. dse@node1:~/resources/cassandra/tools/bin$ ./sstabledump /var/lib/cassandra/data/sql2cql/tombstone-560f57f0e8de11e89798df5483c2a0ca/mc-3-big-Data.db
# note the "expired" : false / "expired" : true status
sstabledump /var/lib/cassandra/data/sql2cql/tombstone-xxxxxx
  {
    "partition" : {
      "key" : [ "1" ],
      "position" : 0
    },
    "rows" : [
      {
        "type" : "row",
        "position" : 52,
        "clustering" : [ "eight" ],
        "liveness_info" : { "tstamp" : "2018-11-15T14:47:23.290560Z" },
        "cells" : [
          { "name" : "account", "value" : 10, "tstamp" : "2018-11-15T14:47:52.183122Z", "ttl" : 300, "expires_at" : "2018-11-15T14:52:52Z", "expired" : false },
          { "name" : "id", "value" : 20 }
        ]
      },      
      {
        "type" : "row",
        "position" : 52,
        "clustering" : [ "five" ],
        "liveness_info" : { "tstamp" : "2018-11-15T14:47:23.114325Z" },
        "cells" : [
          { "name" : "account", "value" : 10, "tstamp" : "2018-11-15T14:47:52.078250Z", "ttl" : 60, "expires_at" : "2018-11-15T14:48:52Z", "expired" : true },
          { "name" : "id", "value" : 20 }
        ]
      }


# COMPACT sstable to merge and cleanup tombstones
nodetool compact sql2cql tombstone
# Examine the contents of the created sstable
# i.e. dse@node1:~/resources/cassandra/tools/bin$ ./sstabledump /var/lib/cassandra/data/sql2cql/tombstone-560f57f0e8de11e89798df5483c2a0ca/mc-4-big-Data.db
# note the deletion_info status
sstabledump /var/lib/cassandra/data/sql2cql/tombstone-xxxxxx
  {
    "partition" : {
      "key" : [ "1" ],
      "position" : 0
    },
    "rows" : [
      {
        "type" : "row",
        "position" : 46,
        "clustering" : [ "eight" ],
        "liveness_info" : { "tstamp" : "2018-11-15T14:47:23.290560Z" },
        "cells" : [
          { "name" : "account", "deletion_info" : { "local_delete_time" : "2018-11-15T14:47:52Z" },
            "tstamp" : "2018-11-15T14:47:52.183122Z"
          },
          { "name" : "id", "value" : 20 }
        ]
      },
      {
        "type" : "row",
        "position" : 46,
        "clustering" : [ "five" ],
        "liveness_info" : { "tstamp" : "2018-11-15T14:47:23.114325Z" },
        "cells" : [
          { "name" : "account", "deletion_info" : { "local_delete_time" : "2018-11-15T14:47:52Z" },
            "tstamp" : "2018-11-15T14:47:52.078250Z"
          },
          { "name" : "id", "value" : 20 }
        ]
      }





#########################
# extra; not needed yet #
#########################
Loop
echo > payload.cql
for ((i=1;i<=2200;i++)); 
do
   echo "INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES ($i,'$i',null,null);" >> payload.cql
   #echo $i
done
cqlsh -u cassandra -p cassandra -f payload.cql


echo > INSERT.cql
for ((i=1;i<=220;i++)); 
do
   echo "INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (999,'$i',$i,$i);" >> INSERT.cql
   #echo $i
done
cqlsh -u cassandra -p cassandra -f INSERT.cql


cqlsh -u cassandra -p cassandra -e 'SELECT * FROM sql2cql.tombstone where partyid=999'

echo > delete-account.cql
for ((i=1;i<=100;i++)); 
do
   echo "DELETE account FROM sql2cql.tombstone where partyid = 999 and name = '$i';" >> delete-account.cql
   #echo $i
done
cqlsh -u cassandra -p cassandra -f delete-account.cql


echo > INSERT-null.cql
for ((i=1;i<=220;i++)); 
do
   echo "INSERT INTO sql2cql.tombstone (partyid,name,id) VALUES (999,'$i',null);" >> INSERT-null.cql
   #echo $i
done
cqlsh -u cassandra -p cassandra -f INSERT-null.cql

TTL:
echo > ttl.cql
echo > select.cql
for ((i=1;i<=20;i++)); 
do
   echo "INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES ($i,'$i',$i,$i) USING TTL 60;" >> ttl.cql
   echo "select account,ttl(account),writetime(account) from sql2cql.tombstone where partyid=$i;" >> select.cql
done


Select:
echo > select.cql
for ((i=1;i<=20;i++)); 
do
  echo "select * from sql2cql.tombstone where partyid=$i;" >> select.cql
done
cqlsh -u cassandra -p cassandra -f select.cql


Create 100MB file:
 dd if=/dev/zero of=./100mbfile bs=1024 count=102400

INSERT file:
echo > INSERT-file.cql

for ((i=1;i<=2;i++)); 
file=`
do
   echo "INSERT INTO sql2cql.tombstone (partyid,name,account,id) VALUES (777,'$i',$1,`cat ./100mbfile`);" >> INSERT-file.cql
   #echo $i
done
cqlsh -u cassandra -p cassandra -f INSERT-file.cql


Tombstone tuning:
alter TABLE sql2cql.tombstone WITH compaction = {'class': 'SizeTieredCompactionStrategy', 'tombstone_compaction_interval': 600 , 'tombstone_threshold': 0.2, 'max_threshold': 4, 'min_threshold': 2} ;



