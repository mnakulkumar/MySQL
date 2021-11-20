CREATE TABLE piggy_bank
(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
coin CHAR(1) NOT NULL,
coin_year INT
);

INSERT INTO piggy_bank 
(coin, coin_year)
VALUES
('Q', 1950),
('P', 1972),
('N', 2005),
('Q', 1999),
('Q', 1981),
('D', 1940),
('Q', 1980),
('P', 2001),
('D', 1926),
('P', 1999);

//View that only shows  us rows containing quarters

CREATE VIEW pb_quarters AS
SELECT * FROM piggy_bank
WHERE coin = 'Q';

CREATE VIEW pb_dimes AS 
SELECT * FROM piggy_bank
WHERE coin = 'D'
WITH CHECK OPTION;

INSERT INTO pb_quarters (coin, coin_year) VALUES ('Q', 1993);

INSERT INTO pb_quarters (coin, coin_year) VALUES ('D', 1942);

INSERT INTO pb_dimes (coin, coin_year) VALUES ('Q', 2005);


START TRANSACTION;
SELECT * FROM piggy_bank;
UPDATE piggy_bank set coin = 'Q' where coin = 'P';
SELECT * FROM piggybank;
ROLLBACK;
SELECT * FROM piggy_bank;

START TRANSACTION;
SELECT * FROM piggy_bank;
UPDATE piggy_bank set coin = 'Q' where coin = 'P';
SELECT * FROM piggy_bank;
COMMIT;
SELECT * FROM piggy_bank;