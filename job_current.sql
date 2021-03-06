SELECT mc.first_name, mc.last_name, mc.phone
FROM my_contacts AS mc
	NATURAL JOIN
	job_desired AS jd
 WHERE jd.title ="Web Developer"
 AND jd.salary_low < 105000
 AND jd.years_exp >= 5;


 //Excercise 401
#1
 SELECT AVG(salary)
 FROM job_current
 WHERE title ='Web Developer';

 SELECT mc.first_name, mc.last_name, jc.salary
 FROM my_contacts AS mc
    NATURAL JOIN
 job_current AS jc
  WHERE jc.salary < (SELECT AVG(salary) 
        FROM job_current
        GROUP BY title
 WHERE title ='Web Developer');

#2
SELECT mc.first_name, mc.last_name, jc.salary
FROM my_contacts AS mc
    NATURAL JOIN
    job_current AS jc
WHERE jc.title = 'Web Developer';


#3
SELECT mc.first_name, mc.last_name, jc.salary,
jc.salary - (SELECT AVG(salary) FROM job_current  WHERE title ='Web Developer')
FROM my_contacts AS mc
    NATURAL JOIN
    job_current AS jc
WHERE jc.title = 'Web Developer';


//Excercise 404

SELECT title 
FROM job_listings
WHERE salary = (SELECT MAX(salary) FROM job_listings);

SELECT mc.first_name, mc.last_name
FROM my_contacts AS mc
    NATURAL JOIN
    job_current AS jc
WHERE jc.salary > (SELECT AVG(salary) FROM job_current)

SELECT mc.first_name, mc.last_name, mc.phone
FROM my_contacts AS mc
    NATURAL JOIN 
    job_current AS jc        
WHERE jc.title = 'Web Designer'
AND mc.zip_code IN (SELECT zip FROM job_listings
WHERE title = 'Web Designer');

SELECT last_name, first_name 
FROM my_contacts
WHERE zip_code IN (SELECT mc.zip_code 
    FROM my_contacts AS mc 
        NATURAL JOIN 
        job_current AS jc
    WHERE jc.salary = (SELECT MAX(salary) from job_current));

//Excercise 411

SELECT mc.email
FROM my_contacts AS mc WHERE
 EXISTS
(SELECT * FROM contact_interest AS ci 
WHERE mc.contact_id = ci.contact_id)
AND 
NOT EXISTS
(SELECT * FROM job_current AS jc
WHERE mc.contact_id = jc.contact_id);

//Exercise 441

SELECT contact_id FROM job_current
UNION 
SELECT salary FROM job_listings;

CREATE TABLE my_table AS
SELECT contact_id FROM job_current
UNION
SELECT salary FROM job_listings;


//Excercise 463

SELECT mc.first_name, mc.last_name, mc.phone, mc.email
FROM my_contacts AS mc 
    NATURAL JOIN
job_desired AS jd
WHERE jd.title = 'Web Designer';

SELECT title, salary, description, zip
FROM job_listings 
WHERE title = 'Technical Writer';

//Exercise 469


CREATE VIEW job_raises AS
SELECT mc.first_name, mc.last_name, mc.email, mc.phone, jc.contact_id, jc.salary, jd.salary_low, jd.salary_low - jc.salary AS raise
FROM job_current AS jc
    INNER JOIN
    job_desired AS jd
    INNER JOIN
    my_contacts AS mc
    WHERE jc.contact_id = jd.contact_id
    AND jc.contact_id = mc.contact_id;