# Cassandra
Cassandra training materials

## Training material for SQL(i.e. Oracle) versus CQL (Cassandra)
One of the key aspects we noticed is the difficulty that arises when the time comes to create the CQL data modelling. Although CQL resembles SQL, syntax-wise, the mindset is completely different than the one required for SQL. 

For those coming from the SQL world, normalization, avoiding redundancy and being able to join is a given. Shifting to Cassandra means almost the opposite: denormalization, redundancy is welcomed and no joins. Also, not having a duplicate key error when you try to overwrite existing information and having to think about the order in which you define the fields that constitute the Primary Key are aspects that are new when you start working with C*, for most of us.

With all this in mind, we have decided to create a real life example of how to model a use case in SQL and compare it with its NoSQL counterpart. And since I am a football fan, nothing better than creating an example for this particular "world" 

## Topics
We have defined seven relevant topics:
1. Data Model SQL vs CQL
2. Primary Key definition & NULL values in Cassandra
3. Collections & static column
4. TTL (Time To Live)
5. Range queries and IN clause
6. Ordering 
7. Idempotency, counters & timestamp use
