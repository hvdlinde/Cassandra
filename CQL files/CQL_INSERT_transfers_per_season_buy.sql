INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Romain Salin', 'Guingamp', 'SCP', '17/18', 0);
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('André Pinto', 'SCB', 'SCP', '17/18', 0);
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Lumor', 'PSC', 'SCP', '17/18', 2500000);
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Cristiano Piccini', 'Bétis', 'SCP', '17/18', 3000000);
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Fábio Coentrão', 'Real Madrid', 'SCP', '17/18', 0);
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Mathieu', 'Barcelona', 'SCP', '17/18', 0);
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Bruno Fernandes', 'Sampdoria', 'SCP', '17/18', 8500000);
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Battaglia', 'SCB', 'SCP', '17/18', 3500000);
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Wendel', 'Fluminense', 'SCP', '17/18', 8800000);
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Rúben Ribeiro', 'RAFC', 'SCP', '17/18', 500000);
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Bruno César', 'GDEP', 'SCP', '15/16', 1300000);
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Seydou Doumbia', 'AS Roma', 'SCP', '17/18', 3500000);
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Bas Dost', 'Wolfsburg', 'SCP', '16/17', 10000000);
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Jefferson', 'SCP', 'SCB', '17/18', 0);


-- Real Madrid
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Cristiano Ronaldo', 'Manchester United', 'Real Madrid', '09/10', 94000000); -- Cristiano Ronaldo
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Gareth Bale', 'Tottenham Hotspur', '13/14', 100000000); -- Gareth Bale
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Luka Modric', 'Tottenham Hotspur', 'Real Madrid', '12/13', 35000000); -- Luka Modric


-- Barcelona
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Luis Suárez', 'Liverpool', 'Barcelona', '14/15', 81720000); -- Luis Suárez
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Ousmane Dembélé', 'Borussia Dortmund', '13/14', 115000000); -- Ousmane Dembélé
INSERT INTO transfers_per_season_buy (playername, sellingteam, buyingteam, season, amount)
VALUES ('Philippe Coutinho', 'Liverpool', 'Barcelona', '12/13', 125000000); -- Philippe Coutinho



cqlsh:jvl> SELECT buyingteam, amount
           FROM transfers_per_season_buy 
           WHERE buyingteam = 'SCP' 
             AND season = '17/18';
			 
cqlsh:jvl> SELECT * FROM transfers_per_season_buy 
           WHERE buyingteam = 'SCP'
             AND season = '17/18'
             AND amount in (3000000, 3500000);
InvalidRequest: code=2200 [Invalid query] message="Clustering column "amount" cannot be restricted by an IN relation"

cqlsh:jvl> SELECT * FROM transfers_per_season_buy 
           WHERE buyingteam = 'SCP' 
             AND season in ('16/17', '17/18'); -- season is part of the partition key whilst amount is not
			 
cqlsh:jvl> SELECT * FROM transfers_per_season_buy
           WHERE buyingteam = 'SCP'
             AND season > '16/17';
InvalidRequest: code=2200 [Invalid query] message="Only EQ and IN relation are supported on the partition key (unless you use the token() function)"

cqlsh:jvl> SELECT * FROM transfers_per_season_buy
           WHERE buyingteam = 'SCP'
             AND season = '17/18'
             AND amount > 8000000;

cqlsh:jvl> SELECT * FROM transfers_per_season_buy 
           WHERE buyingteam = 'SCP'
             AND amount = 8500000;
InvalidRequest: code=2200 [Invalid query] message="Partition key part season must be restricted since preceding part is"

-- ORDER BY
cqlsh:jvl> SELECT * FROM transfers_per_season_buy
           WHERE buyingteam = 'SCP'
             AND season = '17/18'
             AND amount > 100
           ORDER BY playername ASC;
InvalidRequest: code=2200 [Invalid query] message="Order by currently only support the ordering of columns following their declared order in the PRIMARY KEY"
cqlsh:jvl> SELECT * FROM transfers_per_season_buy
           WHERE buyingteam = 'SCP'
             AND season = '17/18'
             AND amount = 3500000
           ORDER BY playername ASC;
InvalidRequest: code=2200 [Invalid query] message="Order by currently only support the ordering of columns following their declared order in the PRIMARY KEY"
cqlsh:jvl> SELECT * FROM transfers_per_season_buy
           WHERE buyingteam = 'SCP'
             AND season = '17/18'
             AND amount = 3500000
           ORDER BY buyingteam ASC, season DESC, amount DESC, playername ASC;
InvalidRequest: code=2200 [Invalid query] message="Order by is currently only supported on the clustered columns of the PRIMARY KEY, got buyingteam"
cqlsh:jvl> SELECT * FROM transfers_per_season_buy
           WHERE buyingteam = 'SCP'
             AND season = '17/18'
             AND amount = 3500000
           ORDER BY amount DESC, playername ASC;

cqlsh:jvl> SELECT * FROM transfers_per_season_buy
           WHERE buyingteam = 'SCP'
             AND season = '17/18'
             AND amount > 100
           ORDER BY amount DESC, playername ASC;

cqlsh:jvl> SELECT * FROM transfers_per_season_buy
           WHERE buyingteam = 'SCP'
             AND season = '17/18'
           ORDER BY amount DESC, playername ASC;
