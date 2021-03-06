// CREATE TABLE, then INSERT with SELECT

CREATE TABLE profession
(
id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
profession varchar(20)
);

INSERT INTO profession
	(profession)
	SELECT profession FROM my_contacts
	GROUP BY profession
	ORDER BY profession;

//2nd way -> CREATE TABLE with SELECT, then ALTER to add primary

CREATE TABLE profession AS
	SELECT profession FROM my_contacts
	GROUP BY profession
	ORDER BY profession;

ALTER TABLE profession
ADD COLUMN id INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (id);

//3rd way -> CREATE,SELECT and INSERT at the same time

CREATE TABLE profession
(
id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
profession VARCHAR(20)
)AS
	SELECT profession FROM my_contacts
	GROUP BY profession
	ORDER BY profession;

// Column ALIAS

CREATE TABLE profession
(
id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
mc_prof varchar(20)
)	AS
	SELECT profession AS mc_prof FROM my_contacts
	GROUP BY mc_prof
	ORDER BY mc_prof;

// Table ALIAS

SELECT profession AS mc_prof
FROM my_contacts AS mc
GROUP BY mc_prof
ORDER BY mc_prof;
 
// Table ALIAS without 'AS'

SELECT profession mc_prof
FROM my_contacts mc
GROUP BY mc_prof
ORDER BY mc_prof;


SELECT p1.profession, p2.profession
FROM profession AS p1
	CROSS JOIN
	profession AS p2; 

ALTER TABLE profession
CHANGE COLUMN id prof_id  INT AUTO_INCREMENT;
