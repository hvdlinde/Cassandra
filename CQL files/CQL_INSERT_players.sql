CREATE KEYSPACE jvl WITH REPLICATION = { 'class' : 'org.apache.cassandra.locator.NetworkTopologyStrategy', 'DCR': '3', 'WPR': '3' } AND DURABLE_WRITES = true;
CREATE KEYSPACE jvl WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor': '2' } AND DURABLE_WRITES = true;

CREATE TABLE governance.maintanancelog (
    hostname text,
    timestamp timeuuid,
    logmessage text,
    PRIMARY KEY (hostname, timestamp)
) WITH CLUSTERING ORDER BY (timestamp DESC)



INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (1, 'Portugal', 'GK', 'Rui', 'Patrício', 'Rui Pedro dos Santos Patrício', 30, 'M', 190, 84, '1988-02-15');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (2, 'France', 'GK', 'Romain', 'Salin', 'Romain Jules Salin', 33, 'M', 189, 76, '1984-07-29');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (3, 'Portugal', 'GK', 'Luís', 'Maximiniano', 'Luís Manuel Arantes Maximiano', 19, 'M', 190, 84, '1999-01-05');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (4, 'Portugal', 'GK', 'Pedro', 'Silva', 'Pedro José Moreira da Silva', 21, 'M', 189, 76, '1997-02-13');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (5, 'Uruguay', 'D', 'Sebastián', 'Coates', 'Sebastián Coates Nión', 27, 'M', 196, 92, '1990-10-07');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (6, 'Portugal', 'D', 'André', 'Pinto', 'André Almeida Pinto', 28, 'M', 194, 84, '1989-10-05');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (7, 'Ghana', 'D', 'Lumor', 'Agbenyenu', 'Lumor Agbenyenu', 21, 'M', 175, 68, '1996-08-10');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (8, 'Italy', 'D', 'Cristiano', 'Piccini', 'Cristiano Piccini', 25, 'M', 189, 79, '1992-09-26');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (9, 'Portugal', 'D', 'Fábio', 'Coentrão', 'Fábio Alexandre Silva Coentrão', 30, 'M', 179, 66, '1988-03-11');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (10, 'Macedonia', 'D', 'Stefan', 'Ristovski', 'Stefan Ristovski', 26, 'M', 180, 72, '1992-02-12');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (11, 'France', 'D', 'Jérémy', 'Mathieu', 'Jérémy Mathieu', 34, 'M', 189, 84, '1983-10-29');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (12, 'Turkey', 'D', 'Merih', 'Demiral', 'Merih Demiral', 20, 'M', 192, 87, '1998-03-05');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (13, 'Portugal', 'M', 'Bruno', 'Fernandes', 'Bruno Miguel Borges Fernandes', 23, 'M', 183, 64, '1994-09-08');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (14, 'Argentina', 'M', 'Rodrigo', 'Battaglia', 'Rodrigo Andrés Battaglia', 26, 'M', 187, 81, '1991-07-12');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (15, 'Portugal', 'M', 'William', 'Carvalho', 'William Silva de Carvalho', 25, 'M', 187, 80, '1992-04-07');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (16, 'Costa Rica', 'M', 'Bryan', 'Ruiz', 'Bryan Jafet Ruiz González', 32, 'M', 186, 69, '1985-08-18');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (17, 'Serbia', 'M', 'Radosav', 'Petrovic', 'Radosav Petrović', 29, 'M', 193, 78, '1989-03-08');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (18, 'Croatia', 'M', 'Josip', 'Misic', 'Josip Mišić', 23, 'M', 187, 80, '1994-06-28');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (19, 'Brazil', 'M', 'Wendel', 'Silva', 'Marcus Wendel Valle da Silva', 20, 'M', 180, 66, '1997-08-28');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (20, 'Portugal', 'M', 'João', 'Palhinha', 'João Maria Lobo Alves Palhinha Gonçalves', 22, 'M', 190, 83, '1995-07-09');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (21, 'Portugal', 'M', 'Rafael', 'Barbosa', 'Rafael Avelino Pereira Pinto Barbosa', 22, 'M', 170, 63, '1996-03-29');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (22, 'Portugal', 'A', 'Rúben', 'Ribeiro', 'Rúben Tiago Rodrigues Ribeiro', 30, 'M', 175, 65, '1987-08-01');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (23, 'Argentina', 'A', 'Marcos', 'Acuña', 'Marcos Javier Acuña', 26, 'M', 172, 66, '1991-10-28');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (24, 'Brazil', 'A', 'Bruno', 'César', 'Bruno César Zanaki', 29, 'M', 178, 78, '1988-11-03');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (25, 'Portugal', 'A', 'Daniel', 'Podence', 'Daniel Castelo Podence', 22, 'M', 162, 56, '1995-10-21');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (26, 'Portugal', 'A', 'Ronaldo', 'Tavares', 'Ronaldo Rodrigues Tavares', 20, 'M', 192, 86, '1997-07-22');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (27, 'Portugal', 'A', 'Gelson', 'Martins', 'Gelson Dany Batalha Martins', 22, 'M', 173, 63, '1995-05-11');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (28, 'Ivory Coast', 'A', 'Seydou', 'Doumbia', 'Seydou Doumbia', 30, 'M', 179, 71, '1987-12-31');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (29, 'Portugal', 'A', 'Rafael', 'Leão', 'Rafael Alexandre da Conceição Leão', 18, 'M', 188, 81, '1999-06-10');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (30, 'Netherlands', 'A', 'Bas', 'Dost', 'Bas Dost', 28, 'M', 196, 86, '1989-05-31');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (31, 'Colombia', 'A', 'Fredy', 'Montero', 'Fredy Henkyer Montero Muñoz', 30, 'M', 176, 66, '1987-07-26');


-- Real Madrid
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (32, 'Costa Rica', 'GK', 'Keylor', 'Navas', 'Keylor Antonio Navas Gamboa', 31, 'M', 185, 78, '1986-12-15');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (33, 'Spain', 'GK', 'Kiko', 'Casilla', 'Francisco Casilla Cortés', 31, 'M', 191, 84, '1986-10-02');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (34, 'Spain', 'D', 'Dani', 'Carvajal', 'Daniel Carvajal Ramos', 26, 'M', 173, 67, '1992-01-11');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (35, 'Spain', 'D', 'Sergio', 'Ramos', 'Sergio Ramos García', 32, 'M', 183, 77, '1986-03-30');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (36, 'France', 'D', 'Raphaël', 'Varane', 'Raphaël Varane', 25, 'M', 191, 77, '1993-04-25');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (37, 'Spain', 'D', 'Nacho', 'Fernández', 'José Ignacio Fernández Iglesias', 28, 'M', 179, 73, '1990-01-18');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (38, 'Brazil', 'D', 'Marcelo', '', 'Marcelo Vieira da Silva Júnior', 30, 'M', 174, 67, '1988-05-12');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (39, 'Spain', 'D', 'Jesús', 'Vallejo', 'Jesús Vallejo Lázaro', 21, 'M', 183, 75, '1997-01-05');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (40, 'Morocco', 'D', 'Achraf', 'Hakimi', 'Achraf Hakimi Mouh', 19, 'M', 179, 72, '1998-11-04');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (41, 'Spain', 'D', 'Álvaro', 'Tejero', 'Álvaro Tejero Sacristán', 21, 'M', 172, 65, '1996-07-20');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (42, 'Germany', 'M', 'Toni', 'Kroos', 'Toni Kroos', 28, 'M', 182, 76, '1990-01-04');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (43, 'Brazil', 'M', 'Casemiro', '', 'Carlos Henrique Casemiro', 26, 'M', 184, 81, '1992-02-23');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (44, 'Spain', 'M', 'Isco', '', 'Francisco Román Alarcón Suárez', 26, 'M', 176, 66, '1992-04-21');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (45, 'Spain', 'M', 'Dani', 'Ceballos', 'Daniel Ceballos Fernandez', 21, 'M', 176, 66, '1996-08-07');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (46, 'Croatia', 'M', 'Luka', 'Modric', 'Luka Modric', 32, 'M', 174, 66, '1985-09-09');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (47, 'Spain', 'M', 'Marcos', 'Llorente', 'Marcos Llorente Moreno', 23, 'M', 183, 69, '1995-01-30');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (48, 'Croatia', 'M', 'Mateo', 'Kovacic', 'Mateo Kovacic', 24, 'M', 178, 70, '1994-05-06');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (49, 'Spain', 'M', 'Jaime', 'Seoane', 'Jaime Seoane Valenciano', 21, 'M', 174, 68, '1997-01-22');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (50, 'Portugal', 'A', 'Cristiano', 'Ronaldo', 'Cristiano Ronaldo dos Santos Aveiro', 33, 'M', 185, 79, '1985-02-05');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (51, 'Wales', 'A', 'Gareth', 'Bale', 'Gareth Frank Bale', 28, 'M', 183, 76, '1989-07-16');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (52, 'Spain', 'A', 'Marcos', 'Asensio', 'Marco Asensio Willemsen', 22, 'M', 180, 73, '1996-01-21');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (53, 'France', 'A', 'Karim', 'Benzema', 'Karim Benzema', 30, 'M', 184, 79, '1987-12-19');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (54, 'Spain', 'A', 'Lucas', 'Vázquez', 'Lucas Vázquez Iglesias', 26, 'M', 173, 63, '1991-07-01');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (55, 'Spain', 'A', 'Borja', 'Mayoral', 'Borja Mayoral Moya', 21, 'M', 183, 75, '1997-04-05');


-- Barcelona
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (56, 'Germany', 'GK', '', 'ter Stegen', 'Marc-André ter Stegen', 26, 'M', 187, 80, '1992-04-30');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (57, 'Netherlands' , 'GK', 'Jasper', 'Cillessen', 'Jacobus Antonius Peter Cillessen', 29, 'M', 185, 77, '1989-04-22');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (58, 'Portugal', 'D', 'Nélson', 'Semedo', 'Nélson Cabral Semedo', 24, 'M', 179, 66, '1993-11-16');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (59, 'Spain', 'D', 'Jordi', 'Alba', 'Jordi Alba Ramos', 29, 'M', 170, 64, '1989-03-21');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (60, 'Spain', 'D', 'Sergi', 'Roberto', 'Sergi Roberto Carnicer', 26, 'M', 178, 70, '1992-02-07');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (61, 'France', 'D', 'Samuel', 'Umtiti', 'Samuel Umtiti', 24, 'M', 182, 75, '1993-11-14');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (62, 'Belgium', 'D', 'Thomas', 'Vermaelen', 'Thomas Vermaelen', 32, 'M', 183, 76, '1985-11-14');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (63, 'Spain', 'D', 'Gerard', 'Piqué', 'Gerard Piqué Bernabéu', 31, 'M', 193, 86, '1987-02-02');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (64, 'France', 'D', 'Lucas', 'Digne', 'Lucas Digne', 24, 'M', 178, 72, '1993-07-20');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (65, 'Spain', 'D', 'Aleix', 'Vidal', 'Aleix Vidal Parreu', 28, 'M', 177, 69, '1989-08-21');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (66, 'Colombia', 'D', 'Yerry', 'Mina', 'Yerry Fernando Mina González', 23, 'M', 195, 88, '1994-09-23');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (67, 'Spain', 'D', 'Jorge', 'Cuenca', 'Jorge Cuenca Barreno', 18, 'M', 187, 84, '1999-11-17');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (68, 'Croatia', 'M', 'Ivan', 'Rakitic', 'Ivan Rakitic', 30, 'M', 184, 78, '1988-03-10');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (69, 'Spain', 'M', 'Denis', 'Suárez', 'Denis Suárez Fernández', 24, 'M', 176, 62, '1994-01-06');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (70, 'Brazil', 'M', 'Paulinho', '', 'José Paulo Bezerra Maciel Júnior', 29, 'M', 182, 75, '1988-07-25');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (71, 'Spain', 'M', 'Sergio', 'Busquets', 'Sergio Burgos Busquets', 29, 'M', 189, 76, '1988-07-16');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (72, 'Brazil', 'M', 'Philippe', 'Coutinho', 'Philippe Coutinho Correia', 26, 'M', 172, 62, '1992-06-12');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (73, 'Portugal', 'M', 'André', 'Gomes', 'André Filipe Tavares Gomes', 24, 'M', 188, 78, '1993-07-30');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (74, 'Spain', 'M', 'Andrés', 'Iniesta', 'Andrés Iniesta Luján', 34, 'M', 171, 64, '1984-05-11');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (75, 'Uruguay', 'A', 'Luis', 'Suárez', 'Luis Alberto Suárez Diaz', 31, 'M', 182, 78, '1987-01-24');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (76, 'France', 'A', 'Ousmane', 'Dembélé', 'Ousmane Dembélé', 21, 'M', 178, 64, '1997-05-15');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (77, 'Argentina', 'A', 'Lionel', 'Messi', 'Lionel Andrés Messi Cuccittini', 31, 'M', 170, 64, '1987-06-24');
INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (78, 'Spain', 'A', 'Paco', 'Alcácer', 'Francisco Alcácer García', 24, 'M', 175, 69, '1993-08-30');

casadmin@cqlsh:jvl> select * from players ORDER BY idplayer;
InvalidRequest: Error from server: code=2200 [Invalid query] message="ORDER BY is only supported when the partition key is restricted by an EQ or an IN."

casadmin@cqlsh:jvl> select SELECT * FROM players WHERE idplayer >= 1 ORDER BY idplayers;
SyntaxException: line 1:7 no viable alternative at input 'SELECT' (select [SELECT]...)

casadmin@cqlsh:jvl> SELECT * FROM players WHERE idplayer >= 1 ORDER BY idplayers;
InvalidRequest: Error from server: code=2200 [Invalid query] message="Only EQ and IN relation are supported on the partition key (unless you use the token() function)"

casadmin@cqlsh:jvl> SELECT * FROM players WHERE idplayer in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10) ORDER BY idplayer;
InvalidRequest: Error from server: code=2200 [Invalid query] message="Order by is currently only supported on the clustered columns of the PRIMARY KEY, got idplayer"



INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (1, 'Portugal', 'GK', 'Rui', 'Patrício', 'Rui Pedro dos Santos Patrício', 30, 'M', 190, 84, '1988-02-15');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (2, 'France', 'GK', 'Romain', 'Salin', 'Romain Jules Salin', 33, 'M', 189, 76, '1984-07-29');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (3, 'Portugal', 'GK', 'Luís', 'Maximiniano', 'Luís Manuel Arantes Maximiano', 19, 'M', 190, 84, '1999-01-05');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (4, 'Portugal', 'GK', 'Pedro', 'Silva', 'Pedro José Moreira da Silva', 21, 'M', 189, 76, '1997-02-13');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (5, 'Uruguai', 'D', 'Sebastián', 'Coates', 'Sebastián Coates Nión', 27, 'M', 196, 92, '1990-10-07');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (6, 'Portugal', 'D', 'André', 'Pinto', 'André Almeida Pinto', 28, 'M', 194, 84, '1989-10-05');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (7, 'Ghana', 'D', 'Lumor', 'Agbenyenu', 'Lumor Agbenyenu', 21, 'M', 175, 68, '1996-08-10');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (8, 'Italy', 'D', 'Cristiano', 'Piccini', 'Cristiano Piccini', 25, 'M', 189, 79, '1992-09-26');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (9, 'Portugal', 'D', 'Fábio', 'Coentrão', 'Fábio Alexandre Silva Coentrão', 30, 'M', 179, 66, '1988-03-11');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (10, 'Macedonia', 'D', 'Stefan', 'Ristovski', 'Stefan Ristovski', 26, 'M', 180, 72, '1992-02-12');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (11, 'France', 'D', 'Jérémy', 'Mathieu', 'Jérémy Mathieu', 34, 'M', 189, 84, '1983-10-29');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (12, 'Turkey', 'D', 'Merih', 'Demiral', 'Merih Demiral', 20, 'M', 192, 87, '1998-03-05');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (13, 'Portugal', 'M', 'Bruno', 'Fernandes', 'Bruno Miguel Borges Fernandes', 23, 'M', 183, 64, '1994-09-08');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (14, 'Argentina', 'M', 'Rodrigo', 'Battaglia', 'Rodrigo Andrés Battaglia', 26, 'M', 187, 81, '1991-07-12');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (15, 'Portugal', 'M', 'William', 'Carvalho', 'William Silva de Carvalho', 25, 'M', 187, 80, '1992-04-07');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (16, 'Costa Rica', 'M', 'Bryan', 'Ruiz', 'Bryan Jafet Ruiz González', 32, 'M', 186, 69, '1985-08-18');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (17, 'Serbia', 'M', 'Radosav', 'Petrovic', 'Radosav Petrović', 29, 'M', 193, 78, '1989-03-08');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (18, 'Croatia', 'M', 'Josip', 'Misic', 'Josip Mišić', 23, 'M', 187, 80, '1994-06-28');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (19, 'Brazil', 'M', 'Wendel', 'Silva', 'Marcus Wendel Valle da Silva', 20, 'M', 180, 66, '1997-08-28');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (20, 'Portugal', 'M', 'João', 'Palhinha', 'João Maria Lobo Alves Palhinha Gonçalves', 22, 'M', 190, 83, '1995-07-09');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (21, 'Portugal', 'M', 'Rafael', 'Barbosa', 'Rafael Avelino Pereira Pinto Barbosa', 22, 'M', 170, 63, '1996-03-29');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (22, 'Portugal', 'A', 'Rúben', 'Ribeiro', 'Rúben Tiago Rodrigues Ribeiro', 30, 'M', 175, 65, '1987-08-01');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (23, 'Argentina', 'A', 'Marcos', 'Acuña', 'Marcos Javier Acuña', 26, 'M', 172, 66, '1991-10-28');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (24, 'Brazil', 'A', 'Bruno', 'César', 'Bruno César Zanaki', 29, 'M', 178, 78, '1988-11-03');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (25, 'Portugal', 'A', 'Daniel', 'Podence', 'Daniel Castelo Podence', 22, 'M', 162, 56, '1995-10-21');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (26, 'Portugal', 'A', 'Ronaldo', 'Tavares', 'Ronaldo Rodrigues Tavares', 20, 'M', 192, 86, '1997-07-22');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (27, 'Portugal', 'A', 'Gelson', 'Martins', 'Gelson Dany Batalha Martins', 22, 'M', 173, 63, '1995-05-11');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (28, 'Ivory Coast', 'A', 'Seydou', 'Doumbia', 'Seydou Doumbia', 30, 'M', 179, 71, '1987-12-31');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (29, 'Portugal', 'A', 'Rafael', 'Leão', 'Rafael Alexandre da Conceição Leão', 18, 'M', 188, 81, '1999-06-10');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (30, 'Netherlands', 'A', 'Bas', 'Dost', 'Bas Dost', 28, 'M', 196, 86, '1989-05-31');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (31, 'Colombia', 'A', 'Fredy', 'Montero', 'Fredy Henkyer Montero Muñoz', 30, 'M', 176, 66, '1987-07-26');


-- Real Madrid
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (32, 'Costa Rica', 'GK', 'Keylor', 'Navas', 'Keylor Antonio Navas Gamboa', 31, 'M', 185, 78, '1986-12-15');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (33, 'Spain', 'GK', 'Kiko', 'Casilla', 'Francisco Casilla Cortés', 31, 'M', 191, 84, '1986-10-02');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (34, 'Spain', 'D', 'Dani', 'Carvajal', 'Daniel Carvajal Ramos', 26, 'M', 173, 67, '1992-01-11');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (35, 'Spain', 'D', 'Sergio', 'Ramos', 'Sergio Ramos García', 32, 'M', 183, 77, '1986-03-30');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (36, 'France', 'D', 'Raphaël', 'Varane', 'Raphaël Varane', 25, 'M', 191, 77, '1993-04-25');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (37, 'Spain', 'D', 'Nacho', 'Fernández', 'José Ignacio Fernández Iglesias', 28, 'M', 179, 73, '1990-01-18');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (38, 'Brazil', 'D', 'Marcelo', '', 'Marcelo Vieira da Silva Júnior', 30, 'M', 174, 67, '1988-05-12');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (39, 'Spain', 'D', 'Jesús', 'Vallejo', 'Jesús Vallejo Lázaro', 21, 'M', 183, 75, '1997-01-05');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (40, 'Morocco', 'D', 'Achraf', 'Hakimi', 'Achraf Hakimi Mouh', 19, 'M', 179, 72, '1998-11-04');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (41, 'Spain', 'D', 'Álvaro', 'Tejero', 'Álvaro Tejero Sacristán', 21, 'M', 172, 65, '1996-07-20');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (42, 'Germany', 'M', 'Toni', 'Kroos', 'Toni Kroos', 28, 'M', 182, 76, '1990-01-04');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (43, 'Brazil', 'M', 'Casemiro', '', 'Carlos Henrique Casemiro', 26, 'M', 184, 81, '1992-02-23');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (44, 'Spain', 'M', 'Isco', '', 'Francisco Román Alarcón Suárez', 26, 'M', 176, 66, '1992-04-21');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (45, 'Spain', 'M', 'Dani', 'Ceballos', 'Daniel Ceballos Fernandez', 21, 'M', 176, 66, '1996-08-07');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (46, 'Croatia', 'M', 'Luka', 'Modric', 'Luka Modric', 32, 'M', 174, 66, '1985-09-09');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (47, 'Spain', 'M', 'Marcos', 'Llorente', 'Marcos Llorente Moreno', 23, 'M', 183, 69, '1995-01-30');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (48, 'Croatia', 'M', 'Mateo', 'Kovacic', 'Mateo Kovacic', 24, 'M', 178, 70, '1994-05-06');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (49, 'Spain', 'M', 'Jaime', 'Seoane', 'Jaime Seoane Valenciano', 21, 'M', 174, 68, '1997-01-22');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (50, 'Portugal', 'A', 'Cristiano', 'Ronaldo', 'Cristiano Ronaldo dos Santos Aveiro', 33, 'M', 185, 79, '1985-02-05');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (51, 'Wales', 'A', 'Gareth', 'Bale', 'Gareth Frank Bale', 28, 'M', 183, 76, '1989-07-16');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (52, 'Spain', 'A', 'Marcos', 'Asensio', 'Marco Asensio Willemsen', 22, 'M', 180, 73, '1996-01-21');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (53, 'France', 'A', 'Karim', 'Benzema', 'Karim Benzema', 30, 'M', 184, 79, '1987-12-19');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (54, 'Spain', 'A', 'Lucas', 'Vázquez', 'Lucas Vázquez Iglesias', 26, 'M', 173, 63, '1991-07-01');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (55, 'Spain', 'A', 'Borja', 'Mayoral', 'Borja Mayoral Moya', 21, 'M', 183, 75, '1997-04-05');



-- Barcelona
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (56, 'Germany', 'GK', '', 'ter Stegen', 'Marc-André ter Stegen', 26, 'M', 187, 80, '1992-04-30');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (57, 'Netherlands' , 'GK', 'Jasper', 'Cillessen', 'Jacobus Antonius Peter Cillessen', 29, 'M', 185, 77, '1989-04-22');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (58, 'Portugal', 'D', 'Nélson', 'Semedo', 'Nélson Cabral Semedo', 24, 'M', 179, 66, '1993-11-16');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (59, 'Spain', 'D', 'Jordi', 'Alba', 'Jordi Alba Ramos', 29, 'M', 170, 64, '1989-03-21');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (60, 'Spain', 'D', 'Sergi', 'Roberto', 'Sergi Roberto Carnicer', 26, 'M', 178, 70, '1992-02-07');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (61, 'France', 'D', 'Samuel', 'Umtiti', 'Samuel Umtiti', 24, 'M', 182, 75, '1993-11-14');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (62, 'Belgium', 'D', 'Thomas', 'Vermaelen', 'Thomas Vermaelen', 32, 'M', 183, 76, '1985-11-14');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (63, 'Spain', 'D', 'Gerard', 'Piqué', 'Gerard Piqué Bernabéu', 31, 'M', 193, 86, '1987-02-02');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (64, 'France', 'D', 'Lucas', 'Digne', 'Lucas Digne', 24, 'M', 178, 72, '1993-07-20');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (65, 'Spain', 'D', 'Aleix', 'Vidal', 'Aleix Vidal Parreu', 28, 'M', 177, 69, '1989-08-21');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (66, 'Colombia', 'D', 'Yerry', 'Mina', 'Yerry Fernando Mina González', 23, 'M', 195, 88, '1994-09-23');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (67, 'Spain', 'D', 'Jorge', 'Cuenca', 'Jorge Cuenca Barreno', 18, 'M', 187, 84, '1999-11-17');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (68, 'Croatia', 'M', 'Ivan', 'Rakitic', 'Ivan Rakitic', 30, 'M', 184, 78, '1988-03-10');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (69, 'Spain', 'M', 'Denis', 'Suárez', 'Denis Suárez Fernández', 24, 'M', 176, 62, '1994-01-06');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (70, 'Brazil', 'M', 'Paulinho', '', 'José Paulo Bezerra Maciel Júnior', 29, 'M', 182, 75, '1988-07-25');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (71, 'Spain', 'M', 'Sergio', 'Busquets', 'Sergio Burgos Busquets', 29, 'M', 189, 76, '1988-07-16');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (72, 'Brazil', 'M', 'Philippe', 'Coutinho', 'Philippe Coutinho Correia', 26, 'M', 172, 62, '1992-06-12');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (73, 'Portugal', 'M', 'André', 'Gomes', 'André Filipe Tavares Gomes', 24, 'M', 188, 78, '1993-07-30');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (74, 'Spain', 'M', 'Andrés', 'Iniesta', 'Andrés Iniesta Luján', 34, 'M', 171, 64, '1984-05-11');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (75, 'Uruguay', 'A', 'Luis', 'Suárez', 'Luis Alberto Suárez Diaz', 31, 'M', 182, 78, '1987-01-24');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (76, 'France', 'A', 'Ousmane', 'Dembélé', 'Ousmane Dembélé', 21, 'M', 178, 64, '1997-05-15');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (77, 'Argentina', 'A', 'Lionel', 'Messi', 'Lionel Andrés Messi Cuccittini', 31, 'M', 170, 64, '1987-06-24');
INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
VALUES (78, 'Spain', 'A', 'Paco', 'Alcácer', 'Francisco Alcácer García', 24, 'M', 175, 69, '1993-08-30');


casadmin@cqlsh:jvl> UPDATE players SET country = 'Uruguay' WHERE idplayer = 5;
InvalidRequest: Error from server: code=2200 [Invalid query] message="PRIMARY KEY part country found in SET part"
casadmin@cqlsh:jvl> UPDATE players SET country = 'Uruguay' WHERE country = 'Uruguai';
InvalidRequest: Error from server: code=2200 [Invalid query] message="PRIMARY KEY part country found in SET part"
casadmin@cqlsh:jvl> UPDATE players SET firstname = 'Marco' WHERE idplayer = 23;
InvalidRequest: Error from server: code=2200 [Invalid query] message="Some clustering keys are missing: country"
casadmin@cqlsh:jvl> UPDATE players SET firstname = 'Marco' WHERE idplayer = 23 AND country = 'Argentina';

casadmin@cqlsh:jvl> select * from players_ordered ORDER BY idplayer;
InvalidRequest: Error from server: code=2200 [Invalid query] message="ORDER BY is only supported when the partition key is restricted by an EQ or an IN."
casadmin@cqlsh:jvl> select * from players_ordered ORDER BY country;
InvalidRequest: Error from server: code=2200 [Invalid query] message="ORDER BY is only supported when the partition key is restricted by an EQ or an IN."
casadmin@cqlsh:jvl> select * from players_ordered where idplayer in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10) ORDER BY country;
InvalidRequest: Error from server: code=2200 [Invalid query] message="Cannot page queries with both ORDER BY and a IN restriction on the partition key; you must either remove the ORDER BY or the IN and sort client side, or disable paging for this query"


casadmin@cqlsh:jvl> INSERT INTO players (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob)
       ... VALUES (5, 'Uruguay', 'D', 'Sebastián', 'Coates', 'Sebastián Coates Nión', 27, 'M', 196, 92, '1990-10-07');
casadmin@cqlsh:jvl> SELECT * from players where idplayer = 5;

 idplayer | country | age | dob        | firstname | fullname              | height | lastname | position | sex | weight
----------+---------+-----+------------+-----------+-----------------------+--------+----------+----------+-----+--------
        5 | Uruguai |  27 | 1990-10-07 | Sebastián | Sebastián Coates Nión |    196 |   Coates |       DC |   M |     92
        5 | Uruguay |  27 | 1990-10-07 | Sebastián | Sebastián Coates Nión |    196 |   Coates |       DC |   M |     92

Because the primary key was not overwritten!

--------------------
----- ORDER BY -----
--------------------

casadmin@cqlsh:jvl> SELECT * from players_ordered WHERE idplayer = 5 ORDER BY country;

 idplayer | country | age | dob        | firstname | fullname              | height | lastname | position | sex | weight
----------+---------+-----+------------+-----------+-----------------------+--------+----------+----------+-----+--------
        5 | Uruguai |  27 | 1990-10-07 | Sebastián | Sebastián Coates Nión |    196 |   Coates |       DC |   M |     92


		
casadmin@cqlsh:jvl> INSERT INTO players_ordered (idPlayer, country, position, firstname, lastname, fullname, age, sex, height, weight, dob) VALUES (5, 'Uruguay', 'D', 'Sebastián', 'Coates', 'Sebas                                        tián Coates Nión', 27, 'M', 196, 92, '1990-10-07');
casadmin@cqlsh:jvl> SELECT * from players_ordered WHERE idplayer = 5;

 idplayer | country | age | dob        | firstname | fullname              | height | lastname | position | sex | weight
----------+---------+-----+------------+-----------+-----------------------+--------+----------+----------+-----+--------
        5 | Uruguai |  27 | 1990-10-07 | Sebastián | Sebastián Coates Nión |    196 |   Coates |       DC |   M |     92
        5 | Uruguay |  27 | 1990-10-07 | Sebastián | Sebastián Coates Nión |    196 |   Coates |       DC |   M |     92


(2 rows)
casadmin@cqlsh:jvl> SELECT * from players_ordered WHERE idplayer = 5 ORDER BY country desc;

 idplayer | country | age | dob        | firstname | fullname              | height | lastname | position | sex | weight
----------+---------+-----+------------+-----------+-----------------------+--------+----------+----------+-----+--------
        5 | Uruguay |  27 | 1990-10-07 | Sebastián | Sebastián Coates Nión |    196 |   Coates |       DC |   M |     92
        5 | Uruguai |  27 | 1990-10-07 | Sebastián | Sebastián Coates Nión |    196 |   Coates |       DC |   M |     92



-- OUTDATED		
CREATE TABLE jvl.players_ageorder (
	idplayer int,
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
	PRIMARY KEY (idplayer, age)
) WITH CLUSTERING ORDER BY (age ASC);

casadmin@cqlsh:jvl> delete from players_ageorder WHERE country = 'Argentina';
InvalidRequest: Error from server: code=2200 [Invalid query] message="Some partition key parts are missing: idplayer"

casadmin@cqlsh:jvl> DELETE FROM players_ageorder ;
SyntaxException: line 1:29 mismatched input ';' expecting K_WHERE

https://stackoverflow.com/questions/27235061/error-creating-table-in-cassandra-bad-request-only-clustering-key-columns-can
