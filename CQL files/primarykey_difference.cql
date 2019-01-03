# Title     SQL2CQL Training
# Subject   Primary key
# Author     João Villa-Lobos
# Author     Hans van der Linde
# Version   1

# Clean up completely
DROP TABLE IF EXISTS sql2cql.simplepk;
DROP TABLE IF EXISTS sql2cql.simplepkck;
DROP TABLE IF EXISTS sql2cql.compositepk;
DROP TABLE IF EXISTS sql2cql.compositepkck;
DROP KEYSPACE IF EXISTS sql2cql;

# Clean up Table content
TRUNCATE TABLE sql2cql.simplepk;
TRUNCATE TABLE sql2cql.simplepkck;
TRUNCATE TABLE sql2cql.compositepk;
TRUNCATE TABLE sql2cql.compositepkck;

# Create env
create KEYSPACE IF NOT EXISTS sql2cql WITH replication = {'class': 'NetworkTopologyStrategy' , 'DC1' : 1};

CREATE TABLE IF NOT EXISTS sql2cql.simplepk (
  partyid int,
  name text,
  account int,
  active boolean,
  enabled boolean,
  creation timestamp,
  primary key (partyid)
);

CREATE TABLE IF NOT EXISTS sql2cql.simplepkck (
  partyid int,
  name text,
  account int,
  active boolean,
  enabled boolean,
  creation timestamp,
  primary key (partyid,name)
);

CREATE TABLE IF NOT EXISTS sql2cql.compositepk (
  partyid int,
  name text,
  account int,
  active boolean,
  enabled boolean,
  creation timestamp,
  primary key ((partyid,name))
);

CREATE TABLE IF NOT EXISTS sql2cql.compositepkck (
  partyid int,
  name text,
  account int,
  active boolean,
  enabled boolean,
  creation timestamp,
  primary key ((partyid,name),account, active)
);


# insert data in all TABLES
insert into sql2cql.simplepk ( partyid, name, account, active, enabled, creation) VALUES ( 1, 'John Doe', 1234, false,false, dateof(now()));
insert into sql2cql.simplepkck ( partyid, name, account, active, enabled, creation) VALUES ( 1, 'John Doe', 1234, false, false, dateof(now()));
insert into sql2cql.compositepk  ( partyid, name, account, active, enabled, creation) VALUES ( 1, 'John Doe', 1234, false, false, dateof(now()));
insert into sql2cql.compositepkck ( partyid, name, account, active, enabled, creation) VALUES ( 1, 'John Doe', 1234, false, false, dateof(now()));

# check out the data TABLE scan (no primary key specified)
select * from sql2cql.simplepk;
select * from sql2cql.simplepkck;
select * from sql2cql.compositepk;
select * from sql2cql.compositepkck;

# check out the data WHERE (& AND) clause 
# to retrieve one row you need to specify the complete primary key
select * from sql2cql.simplepk where partyid=1;
select * from sql2cql.simplepkck where partyid=1;
select * from sql2cql.simplepkck where partyid=1;
select * from sql2cql.compositepkck where partyid=1 and name='John Doe';

# update the data (wrong last name)
UPDATE sql2cql.simplepk SET name  = 'John Wick' WHERE partyid = 1;

UPDATE sql2cql.simplepkck SET name  = 'John Wick' WHERE partyid = 1;
InvalidRequest: Error from server: code=2200 [Invalid query] message="PRIMARY KEY part name found in SET part"
UPDATE sql2cql.simplepkck SET name  = 'John Wick' WHERE partyid = 1 and name = 'John Doe';
InvalidRequest: Error from server: code=2200 [Invalid query] message="PRIMARY KEY part name found in SET part"
UPDATE sql2cql.simplepkck SET enabled = true WHERE partyid = 1 and name = 'John Wick';

UPDATE sql2cql.compositepk SET enabled = true WHERE partyid = 1 and name = 'John Wick' ;
UPDATE sql2cql.compositepkck SET enabled = true WHERE partyid = 1 AND name = 'John Wick' AND account = 1234 AND active = false;


# check out the data WHERE clause (minimal req)
select * from sql2cql.simplepk where partyid=1;
select * from sql2cql.simplepkck where partyid=1;
select * from sql2cql.compositepk where partyid=1;
InvalidRequest: Error from server: code=2200 [Invalid query] message="Cannot execute this query as it might involve data filtering and thus may have unpredictable performance. If you want to execute this query despite the performance unpredictability, use ALLOW FILTERING"
# Error since the complete primary key was not specified
select * from sql2cql.compositepk where partyid=1 ALLOW FILTERING;
# This works but it's a a bad way of querying, it will load all data and filter out what is needed in the JVM
# New attempt including the complete primary key
select * from sql2cql.compositepkck where partyid=1 and name='John Wick';

# check out the data WHERE clause (max req)
# to retrieve one row you need to specify the complete primary key
select * from sql2cql.simplepk where partyid=1;
select * from sql2cql.simplepkck where partyid=1 and name='John Wick';
select * from sql2cql.compositepk where partyid=1 and name='John Wick';
select * from sql2cql.compositepkck where partyid=1 and name='John Wick' and account = 1234 and active = False;
select * from sql2cql.compositepkck where partyid=1 and name='John Wick';

# check out the data TABLE scan (no primary key specified)
select * from sql2cql.simplepk;
select * from sql2cql.simplepkck;
select * from sql2cql.compositepk;
select * from sql2cql.compositepkck;

####

# update via insert command (False = True)
insert into sql2cql.simplepk (partyid, name, account, active, creation, enabled) VALUES ( 1, 'John Wick', 1234, true, dateof(now()), false);
insert into sql2cql.simplepkck (partyid, name, account, active, creation, enabled) VALUES ( 1, 'John Wick', 1234, true, dateof(now()), false);
insert into sql2cql.simplepkck  (partyid, name, account, active, creation, enabled) VALUES ( 1, 'John Wick', 1234, true, dateof(now()), false);
insert into sql2cql.compositepkck (partyid, name, account, active, creation, enabled) VALUES ( 1, 'John Wick', 1234, true, dateof(now()), false);

# check out the data WHERE clause (minimal req)
select * from sql2cql.simplepk where partyid=1;
select * from sql2cql.simplepkck where partyid=1;
select * from sql2cql.simplepkck where partyid=1;
select * from sql2cql.compositepkck where partyid=1 and name='John Wick';

# check out the data WHERE clause (max req)
select * from sql2cql.simplepk where partyid=1;
select * from sql2cql.simplepkck where partyid=1 and name='John Wick';
select * from sql2cql.simplepkck where partyid=1 and name='John Wick';
select * from sql2cql.compositepkck where partyid=1 and name='John Wick' and account = 1234 and active = False;
select * from sql2cql.compositepkck where partyid=1 and name='John Wick';


# check out the data TABLE scan (no primary key specified)
select * from sql2cql.simplepk;
select * from sql2cql.simplepkck;
select * from sql2cql.compositepk;
select * from sql2cql.compositepkck;



# insert new intems 
insert into sql2cql.simplepk ( partyid, name, account, active, creation, enabled) VALUES ( 2, 'Chuck Norris', 56789, true, dateof(now()), false);
insert into sql2cql.simplepkck ( partyid, name, account, active, creation, enabled) VALUES ( 2, 'Chuck Norris', 56789, true, dateof(now()), false);
insert into sql2cql.simplepkck  ( partyid, name, account, active, creation, enabled) VALUES ( 2, 'Chuck Norris', 56789, true, dateof(now()), false);
insert into sql2cql.compositepkck ( partyid, name, account, active, creation, enabled) VALUES ( 2, 'Chuck Norris', 56789, true, dateof(now()), false);

# check out the data WHERE clause (minimal req)
select * from sql2cql.simplepk where partyid=2;
select * from sql2cql.simplepkck where partyid=2;
select * from sql2cql.simplepkck where partyid=2;
select * from sql2cql.compositepkck where partyid=2 and name='Chuck Norris';

# check out the data WHERE clause (max req)
select * from sql2cql.simplepk where partyid=2;
select * from sql2cql.simplepkck where partyid=2 and name='Chuck Norris';
select * from sql2cql.simplepkck where partyid=2 and name='Chuck Norris';
select * from sql2cql.compositepkck where partyid=2 and name='Chuck Norris' and account = 56789 and active = True;
select * from sql2cql.compositepkck where partyid=2 and name='Chuck Norris';

# check out the data TABLE scan (no primary key specified)
select * from sql2cql.simplepk;
select * from sql2cql.simplepkck;
select * from sql2cql.compositepk;
select * from sql2cql.compositepkck;


# Null values
