CREATE  DATABASE gregs_list; 

USE gregs_list;


CREATE TABLE my_contacts ( last_name VARCHAR(30), first_name VARCHAR(20), email VARCHAR(50), gender CHAR(1), birthday DATE, profession VARCHAR(50), location VARCHAR(20), status VARCHAR(20), interests VARCHAR(100), seeking VARCHAR(100) );

DESC my_contacts;


DROP TABLE my_contacts;

INSERT INTO my_contacts
(last_name,first_name,email,gender,birthday,profession,location,status,interests,seeking)
VALUES
('Anderson','Jillian','jill_anderson@breakneckpizza.net','F','1980-09-05','Technical Writer','Palo Alto,CA','Single','Kayaking, Reptiles','Relationship, Friends');

INSERT INTO my_contacts
(last_name, first_name, email)
VALUES
('Andrew', 'Michaels', 'andrewmichaels@breakneckpizza.net');

INSERT INTO my_contacts
(first_name, email, profession, location)
VALUES
('Pat','patpost@breakneckpizza.net', 'Postal Worker', 'Princeton, NJ');

SELECT * FROM my_contacts;


SELECT * FROM my_contacts WHERE first_name = 'Anne';


// Backslash to escape a single quote inbetween a text in INSERT statement
INSERT INTO my_contacts
VALUES
('Funyon','Steve','steve@onionflavoredrings.com', 'M', '1970-04-01', 'Punk','Grover\'s Mill,NJ','Single','smashing the state','compatriots, guitar players');

SELECT * FROM my_contacts
WHERE location = 'Grover\'s Mill,NJ';

SELECT * FROM my_contacts
WHERE location = 'Grover''s Mill,NJ';

SELECT email FROM my_contacts
WHERE profession = 'computer programmer';

SELECT first_name,last_name,location
FROM my_contacts
WHERE birthday = '1995-07-20' ;

SELECT first_name,last_name,email
FROM my_contacts
WHERE status = 'single'
AND location = 'Palo Alto,CA'
AND gender = 'F';


SELECT first_name,last_name,email
FROM mycontacts
WHERE
first_name ='Anne'
AND 
location = 'San Fran,CA';

SELECT * FROM my_contacts
WHERE location LIKE '%CA';

SELECT * FROM my_contacts
WHERE location LIKE '%CA';

SELECT last_name FROM my_contacts
WHERE last_name LIKE '%on';

SELECT first_name FROM my_contacts
WHERE first_name LIKE 'P%' OR first_name LIKE 'M%';


SELECT first_name FROM my_contacts
WHERE first_name LIKE '_i%';

ALTER TABLE my_contacts
ADD COLUMN contact_id INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY(contact_id);

//EXcercise 199
ALTER TABLE my_contacts
ADD COLUMN phone INT(10);

ALTER TABLE my_contacts
ADD COLUMN phone INT(10) AFTER first_name;

ALTER TABLE my_contacts
ADD COLUMN city VARCHAR(50),
ADD COLUMN state CHAR(2);

SELECT RIGHT(location, 2) FROM my_contacts;

SELECT SUBSTRING_INDEX(location, ',', 1) FROM my_contacts;

SELECT SUBSTRING_INDEX(birthday, '-',1) FROM my_contacts;


SELECT SUBSTRING('San Antonio, TX', 5, 3);

SELECT UPPER('uSa');

SELECT LOWER('spaGHEtti');

SELECT LTRIM(' dogfood ');

SELECT RTRIM(' catfood ');

SELECT LENGTH('San Antonio, TX ');

UPDATE my_contacts
SET state = RIGHT(location,2);


//Exercise 283

SELECT * FROM my_contacts
WHERE
interests LIKE 'animals,%'
AND
gender = 'F'
AND 
status = 'single';

INSERT INTO my_contacts
VALUES
(5, 'Fiore', 'Carla', '5557894855', 'cfiore@fioreanimalclinic.com', 'F', '1974-01-07', 'Veterinarian', 'Round Rock, TX', 'single', 'horseback riding, movies, animals, mystery novels, hiking', 'single M', 'Round Rock', 'TX');


SELECT * FROM my_contacts
WHERE gender ='F'
AND status = 'single'
AND state = 'TX'
AND seeking LIKE '%single M%'
AND birthday > '1970-08-08'
AND birthday < '1980-08-08'
AND interests LIKE '%animals%'
AND interests LIKE '%horse%'
AND interests LIKE '%movies%';


SELECT * FROM my_contacts
WHERE gender = 'F'
AND status = 'single'
AND state = 'MA'
AND seeking LIKE '%single M%'
AND birthday > '1950-03-20'
AND birthday < '1960-03-20'
AND SUBSTRING_INDEX(interests, ',', 1) = 'animals';


INSERT INTO my_contacts
VALUES
(6, 'Ferguson', 'Alexis', '5550983476', 'alexangel@yahoo.com', 'F', '1956-09-19', 'Artist', 'Pflugerville, MA', 'single',
'animals', 'single M', 'Pflugerville', 'MA');


ALTER TABLE my_contacts
DROP COLUMN location;

ALTER TABLE my_contacts
MODIFY COLUMN city VARCHAR(50) AFTER location,
MODIFY COLUMN state CHAR(2) AFTER city;

ALTER TABLE my_contacts
ADD COLUMN interest1 VARCHAR(50) AFTER status,
ADD COLUMN interest2 VARCHAR(50) AFTER interest1,
ADD COLUMN interest3 VARCHAR(50) AFTER interest2,
ADD COLUMN interest4 VARCHAR(50) AFTER interest3;


UPDATE my_contacts
SET interest1 = SUBSTRING_INDEX(interests, ',', 1);
UPDATE my_contacts
SET interests = TRIM(RIGHT(interests, (LENGTH(interests)-LENGTH(interest1)-1)));

UPDATE my_contacts
SET interest2 = SUBSTRING_INDEX(interests, ',', 1);

UPDATE my_contacts
SET interests = TRIM(RIGHT(interests, (LENGTH(interests)-LENGTH(interest2)-1)));

UPDATE my_contacts
SET interest3 = SUBSTRING_INDEX(interests, ',',1);

UPDATE my_contacts
SET interests = TRIM(RIGHT(interests, (LENGTH(interests)-LENGTH(interest3)-1)));

UPDATE my_contacts
SET interest4 = SUBSTRING_INDEX(interests, ',', 1);

ALTER TABLE my_contacts
DROP interests;

SELECT * FROM my_contacts
WHERE gender = 'F'
AND status = 'single'
AND state = 'MA'
AND seeking LIKE '%single M%'
AND birthday > '1950-03-20'
AND birthday < '1960-03-20'
AND 
(
interest1 = 'animals'
OR interest2= 'animals'
OR interest3 = 'animals'
OR interest4 = 'animals'
)
AND
(
interest1='trading cards'
OR interest2 ='trading cards'
OR interest3 = 'trading cards'
OR interest4 = 'trading cards'
)
AND 
(
interest1 = 'geocaching'
OR interest2 = 'geocaching'
OR interest3 = 'geocaching'
OR interest4 = 'geocaching'
);





SELECT status FROM my_contacts
GROUP BY status
ORDER BY status;

SELECT profession FROM my_contacts
GROUP BY profession
ORDER BY profession;

SELECT seeking FROM my_contacts
GROUP BY seeking
ORDER BY seeking;

ALTER TABLE my_contacts
ADD (interest1 VARCHAR(20), interest2 VARCHAR(20), interest3
VARCHAR(20), interest4 VARCHAR(20));

UPDATE my_contacts
SET
interest1 = SUBSTRING_INDEX(interests, ',', 1),
interests = SUBSTR(interests, LENGTH(interest1)+2),
interest2 = SUBSTRING_INDEX(interests, ',', 1),
interests = SUBSTR(interests, LENGTH(interest2)+2),
interest3 = SUBSTRING_INDEX(interests, ',', 1),
interests = SUBSTR(interests, LENGTH(interest3)+2),
interest4 = interests;

SELECT interest1, interest2, interest3, interest4 FROM my_contacts;

ALTER TABLE my_contacts
ADD COLUMN prof_id INT  AFTER birthday;

// Adding FOREIGN KEY 

ALTER TABLE my_contacts
ADD CONSTRAINT profession_id_fk
FOREIGN KEY(prof_id)
REFERENCES profession(prof_id);

// Excercise 365

SELECT mc.email, p.profession
FROM my_contacts AS mc
	INNER JOIN
	profession AS p
ON mc.prof_id = p.prof_id;


SELECT mc.first_name, mc.last_name, s.status 
FROM my_contacts AS mc
	INNER JOIN
	status AS s
ON mc.status_id = s.status_id;

SELECT mc.first_name, mc.last_name, z.state
FROM my_contacts AS mc
	INNER JOIN
	zip_code AS z
ON mc.zip_code = z.zip_code;


//Excercise pg-369

SELECT mc.email, p.profession 
FROM my_contacts AS mc
	NATURAL JOIN
	profession AS p;

SELECT mc.first_name, mc.last_name , s.status
	FROM my_contacts AS mc
	INNER JOIN
	status AS s
ON mc.status_id <> s.status_id;

SELECT mc.first_name, mc.last_name , z.state
	FROM my_contacts AS mc
	NATURAL JOIN
	zip_code AS Z


//Excercise 373

SELECT mc.first_name, mc.last_name, ci.interest_id
FROM my_contacts AS mc
	INNER JOIN
	contact_interest AS ci
ON mc.contact_id = ci.contact_id;

SELECT mc.first_name, mc.last_name, ci.interest_id
FROM my_contacts AS mc
	NATURAL JOIN
	contact_interest AS ci;


SELECT *
FROM contact_seeking 
	CROSS JOIN
	seeking; // Or // SELECT * FROM contact_seeking, seeking;

SELECT p.profession 
FROM my_contacts AS mc
	INNER JOIN
	profession AS p
ON mc.prof_id = p.prof_id
GROUP BY profession
ORDER BY profession;




SELECT COUNT(*) AS Females  FROM my_contacts WHERE gender = 'F';

SELECT COUNT(*) AS Males FROM my_contacts WHERE gender = 'M';

SELECT COUNT(*) AS Total FROM my_contacts;


SELECT gender 
FROM my_contacts
WHERE gender <> 'M'
AND gender <> 'F';

//Exercise 517

SET PASSWORD FOR 'root'@'localhost' = PASSWORD('wasd1321!#');

CREATE USER frank
IDENTIFIED BY '$abc123';

CREATE USER jim
IDENTIFIED BY '$efg456';

CREATE USER joe
IDENTIFIED BY '$lmn789';

GRANT DELETE ON
job_listings
TO frank;

GRANT SELECT ON
my_contacts.*
TO frank;

GRANT SELECT, INSERT ON
gregs_list.*
TO jim;

GRANT SELECT ON
my_contacts, profession, zip_code, status, contact_interest, interests, contact_seeking, seeking
TO joe;




