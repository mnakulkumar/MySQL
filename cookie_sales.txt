CREATE TABLE cookie_sales
(
ID INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY(ID),
first_name VARCHAR(20),
sales DEC(4,2),
sale_date DATE);

INSERT INTO cookie_sales
VALUES
('1', 'Lindsay', 32.02, '03062007');

INSERT INTO cookie_sales
VALUES
(2, 'Paris', 26.53, '2007-06-03'),
(3, 'Britney', 11.25, '2007-06-03'),
(4, 'Nicole', 18.96, '2007-06-03'),
(5, 'Lindsay', 9.16, '2007-07-03'),
(6, 'Paris', 1.52, '2007-07-03'),
(7, 'Britney', 43.21, '2007-07-03'),
(8, 'Nicole', 8.05, '2007-07-03'),
(9, 'Lindsay', 17.62, '2007-08-03'),
(10, 'Paris', 24.19, '2007-08-03'),
(11, 'Britney', 3.40, '2007-08-03'),
(12, 'Nicole', 15.21, '2007-08-03'),
(13, 'Lindsay', 0, '2007-09-03'),
(14, 'Paris', 31.99, '2007-09-03'),
(15, 'Britney', 2.58, '2007-09-03'),
(16, 'Nicole', 0, '2007-09-03'),
(17, 'Lindsay', 2.34, '2007-10-03'),
(18, 'Paris', 13.44, '2007-10-03'),
(19, 'Britney', 8.78, '2007-10-03'),
(20, 'Nicole', 26.82, '2007-10-03'),
(21, 'Lindsay', 3.71, '2007-11-03'),
(22, 'Paris', .56, '2007-11-03'),
(23, 'Britney', 34.19, '2007-11-03'),
(24, 'Nicole', 7.77, '2007-11-03'),
(25, 'Lindsay', 16.23, '2007-12-03'),
(26, 'Paris', 0, '2007-12-03'),
(27, 'Britney', 4.50, '2007-12-03'),
(28, 'Nicole', 19.22, '2007-12-03');

SELECT first_name, sales
FROM cookie_sales
ORDER BY first_name;

SELECT SUM(sales)
FROM cookie_sales
WHERE first_name ='Nicole';


SELECT first_name, SUM(sales)
FROM cookie_sales
GROUP BY first_name
ORDER BY SUM(sales) DESC;

SELECT first_name, AVG(sales)
FROM cookie_sales
GROUP BY first_name
ORDER BY AVG(sales) DESC;

SELECT  first_name, MAX(sales)
FROM cookie_sales
GROUP BY first_name;

SELECT first_name, MIN(sales)
FROM cookie_sales
GROUP BY first_name;

SELECT COUNT(sale_date)
FROM cookie_sales;

SELECT first_name, COUNT(sale_date)
FROM cookie_sales
GROUP BY first_name;

SELECT first_name, COUNT(sale_date)
FROM cookie_sales
WHERE sales > 0
GROUP BY first_name;

SELECT DISTINCT sale_date
FROM cookie_sales
ORDER BY sale_date;

SELECT COUNT(DISTINCT sale_date)
FROM cookie_sales;

SELECT first_name, COUNT(DISTINCT sale_date)
FROM cookie_sales
WHERE sales > 0
GROUP BY first_name;

SELECT first_name, SUM(sales)
FROM cookie_sales
GROUP BY first_name
ORDER BY SUM(sales) DESC;

SELECT first_name, SUM(sales)
FROM cookie_sales
GROUP BY first_name
ORDER BY SUM(sales) DESC
LIMIT 2;

SELECT first_name, SUM(sales)
FROM cookie_sales
GROUP BY first_name
ORDER BY SUM(sales) DESC
LIMIT 1,1;