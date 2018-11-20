INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Romain Salin', 'Guingamp', 'SCP', '17/18', 0);
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('André Pinto', 'SCB', 'SCP', '17/18', 0); -- having as PK (buyingteam, amount, season) means that this INSERT overwrites the previous one
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Lumor', 'PSC', 'SCP', '17/18', 2500000);
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Cristiano Piccini', 'Bétis', 'SCP', '17/18', 3000000);
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Fábio Coentrão', 'Real Madrid', 'SCP', '17/18', 0);
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Mathieu', 'Barcelona', 'SCP', '17/18', 0);
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Bruno Fernandes', 'Sampdoria', 'SCP', '17/18', 8500000);
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Battaglia', 'SCB', 'SCP', '17/18', 3500000);
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Wendel', 'Fluminense', 'SCP', '17/18', 8800000);
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Rúben Ribeiro', 'RAFC', 'SCP', '17/18', 500000);
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Bruno César', 'GDEP', 'SCP', '15/16', 1300000);
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Seydou Doumbia', 'AS Roma', 'SCP', '17/18', 3500000);
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Bas Dost', 'Wolfsburg', 'SCP', '16/17', 10000000);
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Jefferson', 'SCP', 'SCB', '17/18', 0);



-- Real Madrid
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Cristiano Ronaldo', 'Manchester United', 'Real Madrid', '09/10', 94000000); -- Cristiano Ronaldo
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Gareth Bale', 'Tottenham Hotspur', '13/14', 100000000); -- Gareth Bale
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Luka Modric', 'Tottenham Hotspur', 'Real Madrid', '12/13', 35000000); -- Luka Modric


-- Barcelona
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Luis Suárez', 'Liverpool', 'Barcelona', '14/15', 81720000); -- Luis Suárez
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Ousmane Dembélé', 'Borussia Dortmund', '13/14', 115000000); -- Ousmane Dembélé
INSERT INTO transfers_buying (playername, sellingteam, buyingteam, season, amount)
VALUES ('Philippe Coutinho', 'Liverpool', 'Barcelona', '12/13', 125000000); -- Philippe Coutinho




cqlsh:jvl> SELECT * FROM transfers_buying 
           WHERE buyingteam = 'SCP' 
             AND sellingteam = 'SCB';

cqlsh:jvl> SELECT * FROM transfers_buying 
           WHERE buyingteam = 'SCP' 
             AND sellingteam = 'SCB' 
             AND amount > 0;

cqlsh:jvl> SELECT * FROM transfers_buying 
           WHERE buyingteam = 'SCP' 
             AND sellingteam = 'SCB'
             AND amount > 0
             AND season = '16/17';
InvalidRequest: code=2200 [Invalid query] message="PRIMARY KEY column "season" cannot be restricted (preceding column "amount" is restricted by a non-EQ relation)"

cqlsh:jvl> SELECT * FROM transfers_buying
           WHERE buyingteam = 'SCP'
             AND sellingteam = 'SCB'
             AND amount = 3500000
             AND season = '17/18';

cqlsh:jvl> SELECT * FROM transfers_buying
           WHERE buyingteam = 'SCP'
             AND sellingteam = 'SCB'
             AND amount = 3500000
             AND season > '15/16';

cqlsh:jvl> SELECT * FROM transfers_buying
           WHERE buyingteam = 'SCP'
             AND sellingteam = 'SCB'
             AND amount = 3500000
             AND season > '15/16'
             AND playername = 'Battaglia' ;
InvalidRequest: code=2200 [Invalid query] message="PRIMARY KEY column "playername" cannot be restricted (preceding column "season" is restricted by a non-EQ relation)"

cqlsh:jvl> SELECT * FROM transfers_buying
           WHERE buyingteam = 'SCP'
             AND amount > 2000000 
			 AND amount < 5000000;
InvalidRequest: code=2200 [Invalid query] message="PRIMARY KEY column "amount" cannot be restricted (preceding column "sellingteam" is not restricted)"

cqlsh:jvl> SELECT * FROM transfers_buying
           WHERE buyingteam = 'SCP'
             AND sellingteam = 'SCB'
             AND amount > 2000000
             AND amount < 5000000;


cqlsh:jvl> SELECT * FROM transfers_buying
           WHERE buyingteam = 'SCP'
             AND sellingteam = 'SCB'
             AND amount = 3500000
             AND season = '17/18'
             AND playername = 'Battaglia' ;

cqlsh:jvl> SELECT * FROM transfers_buying
           WHERE buyingteam = 'SCP'
             AND sellingteam = 'SCB'
             AND amount = 3500000
             AND season = '17/18'
             AND playername > 'A';

-- Clubs added to transfers_* dont have to exist in clubs
-- Player names can differ from what has been stored in players

cqlsh:jvl> SELECT * FROM transfers_buying ORDER BY amount;
InvalidRequest: code=2200 [Invalid query] message="ORDER BY is only supported when the partition key is restricted by an EQ or an IN."

cqlsh:jvl> SELECT * FROM transfers_buying WHERE amount > 8000000;
InvalidRequest: code=2200 [Invalid query] message="Cannot execute this query as it might involve data filtering and thus may have unpredictable performance. If you want to execute this query despite the performance unpredictability, use ALLOW FILTERING"

cqlsh:jvl> SELECT * FROM transfers_buying WHERE buyingteam = 'SCP' OR 'SCB';
SyntaxException: <ErrorMessage code=2000 [Syntax error in CQL query] message="line 1:56 missing EOF at 'OR' (...transfers_buying WHERE buyingteam = 'SCP' [OR] 'SC...)">
cqlsh:jvl> SELECT * FROM transfers_buying 
       ... WHERE buyingteam = 'SCP' 
       ...    OR buyingteam = 'SCB';
SyntaxException: <ErrorMessage code=2000 [Syntax error in CQL query] message="line 3:3 missing EOF at 'OR' (...transfers_buying WHERE buyingteam = 'SCP'    [OR] buyingteam...)">

cqlsh:jvl> SELECT * FROM transfers_buying  WHERE buyingteam in ('SCP', 'SCB')
       ... ORDER BY buyingteam;
InvalidRequest: code=2200 [Invalid query] message="Order by is currently only supported on the clustered columns of the PRIMARY KEY, got buyingteam"
