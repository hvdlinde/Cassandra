# Title     SQL2CQL Training
# Subject   Idempotency, counters & timestamp use
# Author    João Villa-Lobos
# Author    Hans van der Linde
# Version   1

# Create env
create KEYSPACE IF NOT EXISTS sql2cql WITH replication = {'class': 'NetworkTopologyStrategy' , 'DC1' : 1};

CREATE TABLE IF NOT EXISTS sql2cql.idempotency (
  partyid INT,
  time TIMESTAMP,
  count COUNTER,
  primary key (partyid,time)
);

# Clean up env
TRUNCATE TABLE sql2cql.idempotency;

# insert data in the TABLE
INSERT into sql2cql.idempotency (partyid, time) VALUES (1234, dateof(now()));
InvalidRequest: Error from server: code=2200 [Invalid query] message="INSERT statements are not allowed on counter tables, use UPDATE instead"

# Need to use the UPDATE statement instead of INSERT
UPDATE sql2cql.idempotency SET count = count +1 WHERE partyid = 1 and time = dateof(now()) ;

# check out the data WHERE clause (minimal req)
select * from sql2cql.idempotency WHERE partyid = 1; 

# Increase the COUNTER with the same statement (after failure) results in an extra row
a. UPDATE sql2cql.idempotency SET count = count +1 WHERE partyid = 1 and time = toTimeStamp(toDate(now()));
b. UPDATE sql2cql.idempotency SET count = count +1 WHERE partyid = 1 and time = toTimeStamp(now());

# check out the data WHERE clause (minimal req)
# this statement is not idempotent
select * from sql2cql.idempotency WHERE partyid = 1; 

# Need to specify the exact TIMESTAMP
DELETE FROM sql2cql.idempotency WHERE partyid = 1 and time = '2018-11-26 15:32:52.243+0000';
# check out the data WHERE clause (minimal req)
select * from sql2cql.idempotency WHERE partyid = 1; 


UPDATE sql2cql.idempotency SET count = count +1 WHERE partyid = 1 and time = '2018-11-26 15:32:5.242+0000';
# check out the data WHERE clause (minimal req)
select * from sql2cql.idempotency WHERE partyid = 1; 

# Update with the same statement (due to possible write error)
UPDATE sql2cql.idempotency SET count = count +1 WHERE partyid = 1 and time = '2018-11-26 15:32:52.243+0000';
# check out the data WHERE clause (minimal req)
select * from sql2cql.idempotency WHERE partyid = 1; 

# Decrease the counter by 1 to fix
UPDATE sql2cql.idempotency SET count = count -1 WHERE partyid = 1 and time = '2018-11-26 15:32:52.243+0000';
select * from sql2cql.idempotency WHERE partyid = 1; 


DELETE FROM sql2cql.idempotency WHERE partyid = 1 and time = '2018-11-26 15:32:52.243+0000';
# check out the data WHERE clause (minimal req)
select * from sql2cql.idempotency WHERE partyid = 1; 


# Using client (fixed) timestamp and set counter -1
UPDATE sql2cql.idempotency SET count = count -1 WHERE partyid = 2 and time = '2018-11-26 15:00:00.000+0000';

# check out the data WHERE clause for both partitions
select * from sql2cql.idempotency WHERE partyid IN (1,2);

# Update and using client (fixed) timestamp and set counter +1
UPDATE sql2cql.idempotency SET count = count +1 WHERE partyid = 2 and time = '2018-11-26 15:00:00.000+0000';

# check out the data WHERE clause (minimal req)
select * from sql2cql.idempotency WHERE partyid = 2;

# Update and using client (fixed) timestamp and set counter +11
UPDATE sql2cql.idempotency SET count = count +11 WHERE partyid = 2 and time = '2018-11-26 15:00:00.000+0000';

# check out the data WHERE clause (minimal req)
select * from sql2cql.idempotency WHERE partyid = 2;

# Set the counter to fixed counter
# results in an error
UPDATE sql2cql.idempotency SET count = 100 WHERE partyid = 2 and time = '2018-11-26 15:00:00.000+0000';
InvalidRequest: Error from server: code=2200 [Invalid query] message="Cannot set the value of counter column count (counters can only be incremented/decremented, not set)"



