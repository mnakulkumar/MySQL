CREATE TABLE hooptie
(
color VARCHAR(20),
date DATE,
make VARCHAR(20),
mo VARCHAR(20),
howmuch DEC(8,3)
);

INSERT INTO hooptie
VALUES
('silver', '1998', 'Porsche', 'Boxter', 17992.540);

INSERT INTO hooptie
(year, make, mo, howmuch)
VALUES
('2000-02-10', 'Jaguar', 'XJ', 15995);

INSERT INTO hooptie
VALUES
('red', '2002-06-15', 'Cadillac', 'Escalade', 40215.9);


ALTER TABLE hooptie
RENAME TO car_table,
ADD COLUMN car_id INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY(car_id),
ADD COLUMN VIN VARCHAR(30) AFTER car_id,
CHANGE COLUMN mo model VARCHAR(20),
MODIFY COLUMN color VARCHAR(20) AFTER model,
MODIFY COLUMN year date AFTER color,
CHANGE COLUMN howmuch price DEC(7,2);


UPDATE car_table
SET VIN='RNKLK66N33G213481'
WHERE make= 'Porsche';

UPDATE car_table
SET VIN = 'SAEDA44B175B04113'
WHERE model = 'XJ';

UPDATE car_table
SET VIN ='3GYEK63NT2G280668'
WHERE color='red';

ALTER TABLE car_table
CHANGE COLUMN year year DATE AFTER price;

ALTER TABLE car_table
MODIFY COLUMN year DATE AFTER color;

ALTER TABLE car_table
CHANGE car_id car_id INT NOT NULL AUTO_INCREMENT,
DROP PRIMARY KEY;