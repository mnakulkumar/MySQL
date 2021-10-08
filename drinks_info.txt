CREATE TABLE drink_info
(drink_name VARCHAR(20) NOT NULL, cost DEC (4,2) NOT NULL, carbs DEC(4,2) NOT NULL, color VARCHAR(20) NOT NULL, ice CHAR(1) NOT NULL DEFAULT 'Y', calories INT(4) NOT NULL);

INSERT INTO drink_info
VALUES
('Blackthorn', 3, 8.4, 'yellow', 'Y', 33),
('Blue Moon', 2.5, 3.2, 'blue', 'Y', 12),
('Oh My Gosh', 3.5, 8.6, 'orange', 'Y', 35),
('Lime Fizz', 2.5, 5.4, 'green', 'Y', 24),
('Kiss on the Lips', 5.5, 42.5, 'purple', 'Y', 171),
('Hot Gold', 3.2, 32.1, 'orange', 'N', 135),
('Lone Tree', 3.6, 4.2, 'red', 'Y', 17),
('Greyhound', 4, 14, 'yellow', 'Y', 50),
('Indian Summer', 2.8, 7.2, 'brown', 'N', 30),
('Bull Frog', 2.6, 21.5, 'tan', 'Y', 80),
('Soda and It', 3.8, 4.7, 'red', 'N', 19);

SELECT drink_name FROM dink_info
WHERE
cost >= 3.5
AND
calories < 50;

SELECT cost FROM drink_info
WHERE ice = 'Y'
AND color = 'yellow'
AND calories > 33;

SELECT drink_name FROM drink_info
WHERE
calories >=30
AND 
calories <=60;

SELECT drink_name,color FROM drink_info
WHERE carbs<=4 
AND ice ='Y';

SELECT cost FROM drink_info
WHERE calories>=80;

SELECT drink_name,color,ice FROM drink_info
WHERE cost >3.8;

//To select a drink starting with letter 'L'
SELECT drink_name
FROM drink_info
WHERE
drink_name >= 'L'
AND
drink_name < 'M';


SELECT drink_name FROM easy_drinks
WHERE main = 'cherry juice'
OR
second = 'cherry juice';

SELECT drink_name FROM easy_drinks
WHERE main = 'orange juice'
OR
main = 'apple juice';

SELECT drink_name FROM easy_drinks
WHERE calories < 30 OR calories > 60;

SELECT drink_name FROM easy_drinks
WHERE drink_name  BETWEEN 'G' AND 'O';

//Excercise 113
SELECT drink_name FROM drink_info
WHERE ice = 'N';

SELECT drink_name FROM drink_info
WHERE calories >=20;

SELECT drink_name FROM  easy_drinks
WHERE main = 'peach nectar'
 OR
 main = 'soda' ;

 SELECT drink_name FROM drink_info
WHERE carbs < 3 OR carbs >5;

//Exercise 136

INSERT INTO drink_info
VALUES
('Kiss on the Lips', 5.5, 42.5, 'purple', 'Y', 170);

DELETE FROM drink_info
WHERE calories=171;

INSERT INTO drink_info
VALUES
('Blackthorn', 3, 8.4, 'gold', 'Y', 33),
('Greyhound', 4, 14, 'gold', 'Y', 50);

DELETE FROM drink_info 
WHERE color = 'yellow';

INSERT INTO drink_info
VALUES
('Oh My Gosh', 4.5, 8.6, 'orange', 'Y', 35);

DELETE FROM drink_info
WHERE cost =3.5;



INSERT INTO drink_info
VALUES
('Blue Moon', 3.5, 3.2, 'blue', 'Y', 12),
('Lime Fizz', 3.5, 5.4, 'green', 'Y', 24);

DELETE FROM drink_info
WHERE cost = 2.5 ;

UPDATE drink_info
SET cost = cost - 1
WHERE 
drink_name = 'Blue Moon'
OR
drink_name = 'Oh My Gosh'
OR
drink_name = 'Lime Fizz';

