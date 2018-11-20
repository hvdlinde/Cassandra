INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Liga NOS', 1, 'CDA-SCP', 'Portugal', '17/18', '0-2'); -- Aves 0 - SCP 2
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Liga NOS', 1, 'VFC-MFC', 'Portugal', '17/18', '1-1'); -- Vitória 1 Moreirense 1
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Liga NOS', 1, 'PSC-BFC', 'Portugal', '17/18', '2-1'); -- Portimonense 2 Boavista 1
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Liga NOS', 1, 'CDF-CDT', 'Portugal', '17/18', '1-1'); -- Feirense 1 Tondela 1
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Liga NOS', 1, 'RAFC-CFB', 'Portugal', '17/18', '1-0'); -- Rio Ave 1 Belenenses 0
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Liga NOS', 1, 'CSM-FCPF', 'Portugal', '17/18', '1-0'); -- Marítimo 1 Paços 0
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Liga NOS', 1, 'FCP-GDEP', 'Portugal', '17/18', '4-0'); -- Porto 4 Estoril 0
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Liga NOS', 1, 'SLB-SCB', 'Portugal', '17/18', '3-1'); -- Benfica 3 Braga 1
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Liga NOS', 1, 'VSC-GDC', 'Portugal', '17/18', '3-2'); -- Guimarães 3 Chaves 2


-- Spain first round
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('La Liga', 1, 'Leganés-Alavés', 'Spain', '17/18', '1-0'); -- Leganés 1 Alavés 0
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('La Liga', 1, 'Valencia-Las Palmas', 'Spain', '17/18', '1-0'); -- Valencia 1 Las Palmas 0
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('La Liga', 1, 'Celta de Vigo-Real Sociedad', 'Spain', '17/18', '2-3'); -- Celta de Vigo 2 Real Sociedad 3
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('La Liga', 1, 'Girona-Atlético Madrid', 'Spain', '17/18', '2-2'); -- Girona 2 Atlético Madrid 2
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('La Liga', 1, 'Sevilla-Espanyol', 'Spain', '17/18', '1-1'); -- Sevilla 1 Espanyol 1
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('La Liga', 1, 'Athletic-Getafe', 'Spain', '17/18', '0-0'); -- Athletic 0 Getafe 0
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('La Liga', 1, 'Barcelona-Real Betis', 'Spain', '17/18', '2-0'); -- Barcelona 2 Real Betis 0
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('La Liga', 1, 'Deportivo-Real Madrid', 'Spain', '17/18', '0-3'); -- Deportivo 0 Real Madrid 3
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('La Liga', 1, 'Levante-Villareal', 'Spain', '17/18', '1-0'); -- Levante 1 Villareal 0
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('La Liga', 1, 'Málaga-Eibar', 'Spain', '17/18', '0-1'); -- Málaga 0 Eibar 1


-- England first round
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Premier League', 'Arsenal-Leicester City', 'England', '17-18', '4-3'); -- Arsenal 4 Leicester City 3
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Premier League', 'Watford-Liverpool', 'England', '17-18', '3-3'); -- Watford 3 Liverpool 3
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Premier League', 'Southampton-Swansea City', 'England', '17-18', '0-0'); -- Southampton 0 Swansea City 0
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Premier League', 'West Bromwich-AFC Bournemouth', 'England', '17-18', '1-0'); -- West Bromwich 1 AFC Bournemouth 0 
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Premier League', 'Crystal Palace-Huddersfield Town', 'England', '17-18', '0-3'); -- Crystal Palace 0 Huddersfield Town 3
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Premier League', 'Everton-Stoke City', 'England', '17-18', '1-0'); -- Everton 1 Stoke City 0
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Premier League', 'Chelsea-Burnley', 'England', '17-18', '2-3'); -- Chelsea 2 Burnley 3
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Premier League', 'Brighton & Hove Albion-Manchester City', 'England', '17-18', '0-2'); -- Brighton & Hove Albion 0 Manchester City 2
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Premier League', 'Newcastle-Tottenham', 'England', '17-18', '0-2'); -- Newcastle 0 Tottenham 2
INSERT INTO fixtures (competition, roundNb, game, country, season, score)
VALUES ('Premier League', 'Manchester United-West Ham', 'England', '17-18', '4-0'); -- Manchester United 4 West Ham 0



SELECT * FROM fixtures WHERE competition = 'Liga NOS';
SELECT * FROM fixtures WHERE competition = 'Liga NOS' AND roundnb = 1;
SELECT * FROM fixtures WHERE competition = 'Liga NOS' AND roundnb = 1 AND game = 'CDA-SCP';
SELECT * FROM fixtures WHERE competition = 'Liga NOS' AND roundnb = 1 AND score = '0-2' ;
InvalidRequest: code=2200 [Invalid query] message="No secondary indexes on the restricted columns support the provided operators: "