CREATE TABLE movie_table
(
title VARCHAR(40),
rating VARCHAR(2),
drama CHAR(1),
comedy CHAR(1),
action CHAR(1),
gore CHAR(1),
scifi CHAR(1),
for_kids CHAR(1),
cartoon CHAR(1),
category VARCHAR(20)
);

INSERT INTO movie_table
VALUES
('Big Adventure', 'G', 'F', 'F', 'F', 'F', 'F', 'T', 'F'),
('Greg: The Untold Story', 'PG', 'F', 'F', 'T', 'F', 'F', 'F', 'F'),
('Mad Clowns', 'R', 'F', 'F', 'F', 'T', 'F', 'F', 'F'),
('Paraskavedekatriaphobia', 'R', 'T', 'T', 'T', 'F', 'T', 'F', 'F'),
('Rat named Darcy, A', 'G', 'F', 'F', 'F', 'F', 'F', 'T', 'F'),
('End of the Line', 'R', 'T', 'F', 'F', 'T', 'T', 'F', 'T'),
('Shiny Things, The', 'PG', 'T', 'F', 'F', 'F', 'F', 'F', 'F'),
('Take it Back', 'R', 'F', 'T', 'F', 'F', 'F', 'F', 'F'),
('Shark Bait', 'G', 'F', 'F', 'F', 'F', 'F', 'T', 'F'),
('Angry Pirate', 'PG', 'F', 'T', 'F', 'F', 'F', 'F', 'T'),
('Potentially Habitable Planet', 'PG', 'F', 'T', 'F', 'F', 'T', 'F', 'F');

ALTER TABLE movie_table
ADD COLUMN category VARCHAR(20);

UPDATE movie_table
SET category =
CASE
	WHEN drama = 'T'
		THEN 'drama'
	WHEN comedy = 'T'
		THEN 'comedy'
	WHEN action = 'T'
		THEN 'action'
	WHEN gore = 'T'
		THEN 'horror'
	WHEN scifi = 'T'
		THEN 'scifi'
	WHEN for_kids = 'T'
		THEN 'family'
	WHEN cartoon = 'T'
		THEN 'family'
	ELSE 'misc'
END;


UPDATE movie_table
SET category =
CASE
	WHEN drama ='T' AND rating = 'R'
		THEN 'drama-r'
	WHEN comedy = 'T' AND rating ='R'
		THEN 'comedy-r'
	WHEN action = 'T' AND rating = 'R'
		THEN 'action-r'
	WHEN gore = 'T' AND rating = 'R'
		THEN 'horror-r'
	WHEN scifi = 'T' AND rating = 'R'
		THEN 'scifi-r'
	WHEN category = 'misc' AND rating = 'G'
		THEN 'family'
END;

UPDATE movie_table
SET category =
CASE
WHEN category = 'drama-r' THEN 'drama'
WHEN category = 'comedy-r' THEN 'comedy'
WHEN category = 'action-r' THEN 'action'
WHEN category = 'horror-r' THEN 'horror'
WHEN category = 'scifi-r' THEN 'scifi'
END;

ALTER TABLE movie_table
DROP COLUMN drama,
DROP COLUMN comedy,
DROP COLUMN action,
DROP COLUMN gore,
DROP COLUMN scifi,
DROP COLUMN for_kids,
DROP COLUMN cartoon;


SELECT title, category
FROM movie_table
WHERE title LIKE 'A%'
AND
category = 'family';


INSERT INTO movie_table
VALUES
('Annoying Adults', 'G', 'family'),
('Alex Needs a Bath', 'G', 'family'),
('Aaargh! 2', 'G', 'family'),
('Another March of the Penguins','G', 'family'),
('Anyone Can Grow Up', 'G', 'family'),
('Aaargh!','G','family'),
('Airplanes and Helicopters', 'G', 'family'),
('Are You Paying Attention?', 'G', 'family'),
('Acting Up', 'G', 'family');


SELECT title,category
FROM movie_table
ORDER BY title,category;

SELECT category,title
FROM movie_table
ORDER BY category,title;

SELECT title, category, purchased
FROM movie_table
ORDER BY category,purchased;

SELECT * FROM movie_table
ORDER BY category, purchased, title;

SELECT * FROM movie_table
ORDER BY category DESC ,title;