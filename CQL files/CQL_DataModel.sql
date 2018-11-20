SQL:						CQL:
	Clubs						clubs
	Competitions				fixtures
	Countries					squads
	Fixtures					transfers
	Squads						players
	Transfers					transfers_buying
	Players						transfers_selling
	Seasons						transfers_per_season_buy
								transfers_per_season_sell
								players
								players_byage
								players_bycountry
								players_ordered
	
	
cqlsh: DS220 --> /usr/bin/cqlsh	

CREATE KEYSPACE jvl 

CREATE TABLE IF NOT EXISTS jvl.fixtures (
	competition text,
	roundnb int,
	game text,
	country text,
	season text,
	score text,
	PRIMARY KEY (competition, roundnb, game)
);

	
CREATE TABLE IF NOT EXISTS jvl.clubs (
	abbreviation text,
	fullname text,
	stadiumName text,
	founded text,
	PRIMARY KEY (abbreviation, founded)
);


CREATE TABLE IF NOT EXISTS jvl.squads (
	team text,
	playername text,
	season text,
	PRIMARY KEY (team, playername)
);



--- ATTEMPTS ---
CREATE TABLE IF NOT EXISTS jvl.transfers_buying (
	playername text,
	sellingteam text,
	buyingteam text,
	season text,
	amount int,
	PRIMARY KEY (buyingteam, sellingteam, amount, season)
) WITH CLUSTERING ORDER BY (amount ASC, season DESC); -- sellingteam needs to be part of the ORDER BY


CREATE TABLE IF NOT EXISTS jvl.transfers_buying (
	playername text,
	sellingteam text,
	buyingteam text,
	season text,
	amount int,
	PRIMARY KEY (buyingteam, sellingteam, amount, season)
) WITH CLUSTERING ORDER BY (sellingteam ASC, amount ASC, season DESC); -- if by any chance there are 2 transfers between the same 2 clubs in the same season for the same amount...
--- ATTEMPTS ---

CREATE TABLE IF NOT EXISTS jvl.transfers_buying (
	playername text,
	sellingteam text,
	buyingteam text,
	season text,
	amount int,
	PRIMARY KEY (buyingteam, sellingteam, amount, season, playername)
) WITH CLUSTERING ORDER BY (sellingteam ASC, amount ASC, season DESC, playername ASC);


CREATE TABLE IF NOT EXISTS jvl.transfers_selling (
	playername text,
	sellingteam text,
	buyingteam text,
	season text,
	amount int,
	PRIMARY KEY (sellingteam, buyingteam, amount, season, playername)
) WITH CLUSTERING ORDER BY (buyingteam ASC, amount ASC, season DESC, playername ASC);


-- First two tables allow me to check transfers between 2 clubs plus the amount exchanged
-- Table transfers_per_season_buy allows checking how much a buyingteam spent
-- Table transfers_sellamount allows checking how much a buyingteam spent

CREATE TABLE IF NOT EXISTS jvl.transfers_per_season_buy (
	playername text,
	sellingteam text,
	buyingteam text,
	season text,
	amount int,
	PRIMARY KEY ((buyingteam, season), amount, playername)
) WITH CLUSTERING ORDER BY (amount DESC, playername ASC);


CREATE TABLE IF NOT EXISTS jvl.transfers_per_season_sell (
	playername text,
	sellingteam text,
	buyingteam text,
	season text,
	amount int,
	PRIMARY KEY ((sellingteam, season), amount, playername)
) WITH CLUSTERING ORDER BY (amount DESC, playername ASC);


CREATE TABLE IF NOT EXISTS jvl.players (
	country text,
	team text,
	position text,
	firstname text,
	lastname text,
	fullname text,
	age int,
	sex text,
	height int,
	weight int,
	dob date,
	PRIMARY KEY (team, firstname, lastname)
);


CREATE TABLE IF NOT EXISTS jvl.players_byage (
	country text,
	team text,
	position text,
	firstname text,
	lastname text,
	fullname text,
	age int,
	sex text,
	height int,
	weight int,
	dob date,
	PRIMARY KEY (team, age, firstname, lastname)
);


CREATE TABLE IF NOT EXISTS jvl.players_bycountry (
	country text,
	team text,
	position text,
	firstname text,
	lastname text,
	fullname text,
	age int,
	sex text,
	height int,
	weight int,
	dob date,
	PRIMARY KEY (team, country, firstname, lastname)
);

-- check if it still makes sense
CREATE TABLE jvl.players_ordered (
	idPlayer int,
	country text,
	position text,
	firstname text,
	lastname text,
	fullname text,
	age int,
	sex text,
	height int,
	weight int,
	dob date,
	PRIMARY KEY (idPlayer, country)
) WITH CLUSTERING ORDER BY (country ASC);
