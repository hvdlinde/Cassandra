-- Overview of which tables were created for SQL and their CQL counterparts
-- SQL:						CQL:
--	Clubs						clubs
-- 	Competitions				fixtures
-- 	Countries					squads
-- 	Fixtures					transfers
-- 	Squads						players
-- 	Transfers					transfers_buying
-- 	Players						transfers_selling
--	Seasons						transfers_per_season_buy
-- 								transfers_per_season_sell
--								players
--								players_byage
--								players_bycountry
--								players_ordered

	
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


-- First two tables allows the user to check transfers between 2 clubs plus the amount exchanged
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


-- Idempotent example with counters
CREATE TABLE IF NOT EXISTS jvl.fixtures_counters (
	competition text,
	roundnb int,
	game text,
	country text,
	season text,
	score text,
	count counter,
	PRIMARY KEY (competition, roundnb, game, country, season, score)
);


-- Idempotent example with timestamp
CREATE TABLE IF NOT EXISTS fixtures_timestamp (
    competition text,
    roundnb int,
    game text,
    country text,
    season text,
    score text,
    inserted timestamp,
    PRIMARY KEY (competition, roundnb, game)
);


-- Set, List and Map
CREATE TABLE players_bysquad_history (
    name text,
	squads_set set<text>,
	squads_list list<text>,
	squads_map map<text, text>,
	PRIMARY KEY (name)
);


-- UDT example
CREATE TYPE personal_info (
	age int,
	sex text,
	height int,
	weight int,
	dob date
);


-- Frozen example
CREATE TABLE IF NOT EXISTS jvl.players_v2 (
	country text,
	team text,
	position text,
	firstname text,
	lastname text,
	fullname text,
	info FROZEN<personal_info>,
	PRIMARY KEY (team, firstname, lastname)
);


-- Static example
CREATE TABLE IF NOT EXISTS fixtures_static (
    competition text,
    roundnb int,
    game text,
    country text STATIC,
    season text,
    score text,
    PRIMARY KEY (competition, roundnb, game)
);


-- TTL example
CREATE TABLE IF NOT EXISTS fixtures_ttl (
	competition text,
	roundnb int,
	game text,
	country text,
	season text,
	score text,
	PRIMARY KEY (competition, roundnb, game)
) 
WITH default_time_to_live = 3600;
