CREATE DATABASE drinks;

USE drinks;

CREATE TABLE easy_drinks
(drink_name VARCHAR(20) NOT NULL,
main VARCHAR(20) NOT NULL,
amount1 DEC(2,1) NOT NULL DEFAULT 1.5,
second VARCHAR(20) NOT NULL,
amount2 VARCHAR DEC(3,2) DEFAULT .75,
directons BLOB);

INSERT INTO easy_drinks 
VALUES 
('Blackthorn','tonic water',1.5,'pineapple juice',1,'stir with ice, strain into cocktail glass with lemon twist'),
('Blue Moon','soda',1.5,'blueberry juice',0.75,'stir with ice, strain into cocktail glass with lemon twist'),
('Oh My Gosh','peach nectar',1,'pineapple juice',1,'stir with ice, strain into shot glass'),
('Lime Fizz','Sprite',1.5,'lime juice',0.75,'stir with ice, strain into cocktail glass'),
('Kiss on the Lips','cherry juice',2,'apricot nectar',7,'serve over ice with straw'),
('Hot Gold','peach nectar',3,'orange juice',6,'pour hot orange juice in mug and add peach nectar'),
('Lone Tree','soda',1.5,'cherry juice',0.75,'stir with ice, strain into cocktail glass'),
('Greyhound', 'soda', 1.5, 'grapefruit juice', 5, 'serve over ice, stir well'),
('Indian Summer', 'apple juice', 2, 'hot tea', 6, 'add juice to mug and top off with hot tea'),
('Bull Frog', 'iced tea', 1.5, 'lemonade', 5, 'serve over ice with lime slice'),
('Soda and It', 'soda', 2, 'grape juice', 1, 'shake in cocktail glass, no ice');

//Search Queries

SELECT * FROM easy_drinks WHERE main = 'Sprite';

SELECT * FROM easy_drinks WHERE main='soda';

SELECT * FROM easy_drinks WHERE amount2 = 6;

SELECT * FROM easy_drinks WHERE second = "orange juice";

SELECT * FROM easy_drinks WHERE amount1 < 1.5;

SELECT * FROM easy_drinks WHERE amount2 < '1';

SELECT * FROM easy_drinks WHERE amount1 = '1.5';

SELECT drink_name, main, second 
FROM easy_drinks
WHERE main = 'soda';

SELECT drink_name, main, second
FROM easy_drinks;

SELECT drink_name FROM easy_drinks
WHERE
main = 'cherry juice';

SELECT drink_name FROM easy_drinks
WHERE
second = 'apricot nectar';

SELECT drink_name FROM easy_drinks
WHERE
amount2 = 7;

SELECT drink_name FROM easy_drinks
WHERE
directions = 'serve over ice with straw';

SELECT drink_name FROM easy_drinks
WHERE
drink_name = 'Kiss on the Lips';

SELECT drink_name FROM easy_drinks
WHERE 
drink_name = 'Bull Frog';

SELECT drink_name FROM easy_drinks
WHERE
main = 'iced tea';

SELECT drink_name FROM easy_drinks
WHERE
second = 'lemonade';

SELECT drink_name FROM easy_drinks
WHERE 
directions = 'serve over ice with lime slice';

SELECT drink_name FROM easy_drinks
WHERE
main = 'soda'
AND
amount1>1;

SELECT drink_name FROM easy_drinks WHERE amount2 BETWEEN 2 AND 6;

SELECT drink_name FROM easy_drinks WHERE NOT carbs BETWEEN  3 AND 5;

SELECT drink_name FROM easy_drinks
WHERE NOT drink_name LIKE 'B%'
AND NOT drink_name LIKE 'L%';

SELECT * FROM easy_drinks
WHERE NOT main IN ('soda', 'iced tea');

SELECT * FROM easy_drinks
WHERE NOT drink_name  IN( 'Blackthorn');\

SELECT * FROM easy_drinks
WHERE NOT main IS NULL;
//same as
SELECT * FROM easy_drinks
WHERE main IS NOT NULL;

SELECT * FROM easy_drinks
WHERE NOT main = 'soda'
AND NOT main = 'iced tea';


//Excercise
SELECT drink_name from easy_drinks
WHERE amount1 >= 1.5;

SELECT drink_name FROM drink_info
WHERE calories > 0;

