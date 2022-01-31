CREATE TABLE doughnut_ratings
(location VARCHAR(20), time TIME, date DATE, type VARCHAR(20), rating INT(2), comments VARCHAR(30));

INSERT INTO doughnut_ratings
VALUES
('Krisp King', '08:50:00', '210927', 'plain glazed', 10, 'almost perfect');

UPDATE doughnut_ratings SET location='Krispy King' WHERE location='Krisp King';


INSERT INTO doughnut_ratings
(location,time,date,rating,comments)
VALUES
('Duncan''s Donuts', '08:59:00', '990825', 6, 'greasy');

 UPDATE doughnut_ratings
 SET date='20210825'
 WHERE rating=6;


INSERT INTO doughnut_ratings
VALUES
('Starbuzz Coffee', '193500', '20210524', 'cinnamon cake', 5, 'stale, but tasty'),
('Duncan''s Donuts', '190300', '20210426', 'jelly', 7, 'not enough jelly');


UPDATE doughnut_ratings
SET
type = 'glazed'
WHERE type = 'plain glazed';

