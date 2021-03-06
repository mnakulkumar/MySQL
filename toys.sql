CREATE TABLE toys
(
toy_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
toy VARCHAR(20)
);

CREATE TABLE girls
(
girl_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
girl VARCHAR(20),
toy_id INT NOT NULL,
CONSTRAINT toys_toy_id_fk
FOREIGN KEY(toy_id)
REFERENCES toys(toy_id)
);

INSERT INTO toys
(toy)
VALUES
('hula hoop'),
('balsa glider'),
('toy soldiers'),
('harmonica'),
('baseball cards'),
('tinker toys'),
('etch-a-sketch'),
('slinky');


INSERT INTO girls
(girl, toy_id)
VALUES
('Jane', 3),
('Sally', 4),
('Cindy', 1);

SELECT g.girl, t.toy
FROM toys AS t
LEFT OUTER JOIN girls AS g
ON g.toy_id = t.toy_id; 

SELECT g.girl, t.toy
FROM girls AS g
	LEFT OUTER JOIN 
toys AS t
ON g.toy_id = t.toy_id;

//Exercise 423

SELECT g.girl, t.toy
FROM girls AS g
	LEFT OUTER JOIN
toys AS t
ON g.toy_id = t.toy_id; //same results as next query , Girls is LEFT TABLE & Toys is RIGHT table

SELECT g.girl, t.toy
FROM toys AS t
	RIGHT OUTER JOIN
girls AS g
ON g.toy_id = t.toy_id; // same as above , Girls is LEFT TABLE & Toys is RIGHT table

SELECT g.girl, t.toy
FROM toys AS t
	LEFT OUTER JOIN
girls AS g
ON g.toy_id = t.toy_id; // same as next query as TOYS IS LEFT TABLE AND girls is RIGHT TABLE



SELECT g.girl
FROM girls AS g
	RIGHT OUTER JOIN
girls AS g
ON g.toy_id = t.toy_id;  // toy is LEFT TABLE and girls is RIGHT table
