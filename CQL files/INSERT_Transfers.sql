INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (1, 2, 48, 1, 18, 0); -- Romain Salin, Guingamp
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (2, 6, 4, 1, 18, 0); -- André Pinto
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (3, 7, 10, 1, 18, 2500000); -- Lumor
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (4, 8, 26, 1, 18, 3000000); -- Piccini
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (5, 9, 19, 1, 18, 0); -- Coentrão
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (6, 11, 20, 1, 18, 0); -- Mathieu
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (7, 13, 142, 1, 18, 8500000); -- Bruno Fernandes
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (8, 14, 4, 1, 18, 3500000); -- Battaglia
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (9, 19, 123, 1, 18, 8800000); -- Wendel
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (10, 22, 5, 1, 18, 500000); -- Ruben Ribeiro
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (11, 24, 18, 1, 16, 1300000); -- Bruno César
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (12, 28, 137, 1, 18, 3500000); -- Doumbia
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (13, 30, 73, 1, 17, 10000000); -- Bas Dost

SELECT * FROM Seasons;
-- Real Madrid
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (14, 50, 78, 19, 10, 94000000); -- Cristiano Ronaldo
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (15, 51, 80, 19, 14, 100000000); -- Gareth Bale
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (16, 46, 80, 19, 13, 35000000); -- Luka Modric


-- Barcelona
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (17, 75, 79, 20, 15, 81720000); -- Luis Suárez
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (18, 76, 61, 20, 18, 115000000); -- Ousmane Dembélé
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (19, 72, 79, 20, 18, 125000000); -- Philippe Coutinho

SELECT * FROM transfers;

-- INSERTS will fail
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (1, 5, SunderlandID, 1, 16, 5000000) -- Coates

INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (1, 10, RijekaID, 1, 18, 0) -- Ristovski
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (1, 16, FulhamID, 1, 16, 1200000) -- Bryan Ruiz
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (1, 17, DinamoKievID, 1, 17, 1000000) -- Petrovic
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (1, 18, RijekaID, 1, 18, 3000000 ) -- Misic
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (1, 23, RacingID, 1, 18, 9600000) -- Acuna
INSERT INTO transfers (idTransfer, idPlayer, idSellingTeam, idBuyingTeam, idSeason, amount)
VALUES (1, 31, Tianjin TedaID, 1, 18, 0) -- Montero, Tianjin Teda, SCP, 18, 0
