CREATE TABLE my_people
(
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(20),
last_name VARCHAR(30),
PRIMARY KEY(id)
);

INSERT INTO my_people (id, first_name, last_name)
VALUES (NULL, 'Marcia', 'Brady');

INSERT INTO my_people (id, first_name, last_name)
VALUES (1, 'Jan', 'Brady');

INSERT INTO my_people
VALUES (2, 'Bobby', 'Brady');

INSERT INTO my_people (first_name, last_name)
VALUES ('Cindy', 'Brady');

INSERT INTO my_people (id, first_name, last_name)
VALUES (99, 'Peter', 'Brady');