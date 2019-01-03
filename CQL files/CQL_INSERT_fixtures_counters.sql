-- England first round
INSERT INTO fixtures_counters (competition, roundNb, game, country, season, score)
VALUES ('Premier League', 1, 'Arsenal-Leicester City', 'England', '17/18', '4-3'); -- Arsenal 4 Leicester City 3

-- You add the first result
UPDATE fixtures_counters SET count = count + 1
WHERE competition = 'Premier League'
  AND roundNb = 1
  AND game = 'Arsenal-Leicester City'
  AND country = 'England'
  AND season = '17/18'
  AND score = '34-3';

-- You notice a typo and try to correct it
UPDATE fixtures_counters SET score = '4-3'
WHERE competition = 'Premier League'
  AND roundNb = 1
  AND game = 'Arsenal-Leicester City'
  AND country = 'England'
  AND season = '17/18'
  AND score = '4-3';

-- Doesnt work because score is part of the PRIMARY KEY so you need to add a new record
UPDATE fixtures_counters SET count = count + 1
WHERE competition = 'Premier League'
  AND roundNb = 1
  AND game = 'Arsenal-Leicester City'
  AND country = 'England'
  AND season = '17/18'
  AND score = '4-3';
  
-- You now have 2 records for the same game. Since you dont want that you need to delete the wrong one
DELETE FROM fixtures_counters
WHERE competition = 'Premier League'
  AND roundNb = 1
  AND game = 'Arsenal-Leicester City'
  AND country = 'England'
  AND season = '17/18'
  AND score = '34-3';
  
INSERT INTO fixtures_counters (competition, roundNb, game, country, season, score)
VALUES ('Premier League', 1, 'Watford-Liverpool', 'England', '17/18', '3-3'); -- Watford 3 Liverpool 3

-- You add the second result
UPDATE fixtures_counters SET count = count + 1
WHERE competition = 'Premier League'
  AND roundNb = 1
  AND game = 'Watford-Liverpool'
  AND country = 'England'
  AND season = '17/18'
  AND score = '3-3';

-- Add third record with a negative value for counter
UPDATE fixtures_counters SET count = count - 1
WHERE competition = 'Premier League'
  AND roundNb = 1
  AND game = 'Southampton-Swansea City'
  AND country = 'England'
  AND season = '17/18'
  AND score = '0-0';
