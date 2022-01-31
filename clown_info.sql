CREATE DATABASE clown;
USE clown;

CREATE TABLE clown_info
(name VARCHAR (20),last_seen VARCHAR(40),appearance VARCHAR(50),activities VARCHAR(40));

INSERT INTO clown_info
VALUES
('Elsie','Cherry Hill Senior Center','F, red hair, green dress, huge feet','balloons,little car'),
('Pickles','Jack Green''s party','M, orange hair, blue suit, huge feet','mime'),
('Snuggles','Ball-Mart','F, yellow shirt, baggy red pants','horn, umbrella'),
('Mr. Hobo','BG Circus','M, cigar, black hair, tiny hat','violin'),
('Clarabelle','Belmont Senior Center','F, pink hair, huge flower, blue dress','yelling, dancing'),
('Scooter','Oakland Hospital','M, blue hair, red suit, huge nose','balloons'),
('Zippo','Millstone Mall','F, orange suit, baggy pants','dancing'),
('Babe','Earl''s Autos','F, all pink and sparkly','balancing,little car');

INSERT INTO clown_info
VALUES
('Snuggles','Ball-Mart','F, yellow shirt, baggy blue pants','horn, umbrella'),

INSERT INTO clown_info
VALUES
('Zippo', 'Millstone Mall', 'F, orange suit, baggy pants',
'dancing, singing');

INSERT INTO clown_info
VALUES
('Bonzo', 'Dickson Park','M, in drag, polka dotted dress','singing, dancing');

INSERT INTO clown_info VALUES ('Sniffles', 'Tracy\'s','M, green and purple suit,pointy nose','climbing into tiny car');


INSERT INTO clown_info VALUES ('Mr. Hobo', 'party for Eric Gray', 'M, cigar, black hair, tiny hat', 'violin');


//INSERT INTO clown_info(name,appearance,activities)
VALUES
('Bonzo','M, in drag, polka dotted dress','singing, dancing');

INSERT INTO clown_info 
(name,last_seen,appearance)
VALUES ('Sniffles', 'Tracy\'s','M, green and purple suit','pointy nose');


//Excericise  129

DELETE FROM clown_info 
WHERE activities='dancing'; 

//
INSERT INTO clown_info
VALUES
('Clarabelle', 'Belmont Senior Center', 'F, pink hair, huge flower, blue dress', 'dancing');
 
DELETE FROM clown_info
WHERE
activities = 'yelling, dancing'
AND name = 'Clarabelle';

INSERT INTO clown_info
VALUES
('Mr. Hobo', 'Tracy\'s', 'M, cigar, black hair, tiny hat', 'violin');

//Exercise 142

DELETE FROM clown_info
WHERE name = 'Mr. Hobo'
AND last_seen <> 'Tracy\'s';

DELETE FROM clown_info
WHERE name = 'Mr. Hobo'
AND NOT last_seen = 'Tracy\'s';


SELECT * FROM clown_info
WHERE
activities = 'dancing';

INSERT INTO clown_info
VALUES
('Clarabelle', 'Belmont Senior Center', 'F, pink hair, huge flower, blue dress', 'dancing, singing');


DELETE FROM clown_info
WHERE
activities = 'dancing';

UPDATE clown_info
SET last_seen = 'Dickson Park'
WHERE name = 'Mr. Hobo'
AND last_seen = 'Tracy\'s';

UPDATE clown_info
SET last_seen = 'Tracy\'s'
WHERE name = 'Mr. Hobo'
AND last_seen ='Party for Eric Gray';

//Excercise 150;

UPDATE clown_info
SET activities = 'singing'
WHERE name = 'Zippo';

UPDATE clown_info
SET appearance = 'F, yellow shirt, baggy blue pants'
WHERE name = 'Snuggles';


UPDATE clown_info
SET last_seen = 'Dickson Park'
WHERE name = 'Bonzo';


UPDATE clown_info
SET activities = 'climbing into tiny car'
WHERE name = 'Sniffles;

UPDATE clown_info
SET last_seen ='Eric Gray\'s Party'
WHERE name = 'Mr. Hobo';


//Excercise 433

SELECT c1.name AS clown_name, c2.name AS boss
FROM clown_info1 AS c1
	INNER JOIN
	clown_info2 AS c2
ON c1.boss_id = c2.id;


