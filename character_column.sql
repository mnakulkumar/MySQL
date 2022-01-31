CREATE TABLE character_column
(
test_chars CHAR(1)
);

INSERT INTO character_column
(test_chars)
VALUES
('0'),('1'),('2'),('3'),('A'),('B'),('C'),('D'),('a'),('b'),('c'),('d'),('!'),('@'),('#'),('$'),('%'),('^'),('&'),('*'),('('),(')'),('-'),('_'),('+'),('='),('['),(']'),('{'),('}'),(';'),(':'),('\'');

INSERT INTO character_column
(test_chars)
VALUES
('"'),('\\'),('|'),('`'),('~'),(','),('.'),('<'),('>'),('/'),('?');

INSERT INTO character_column
VALUES
(' '),(NULL)
;

SELECT test_chars 
FROM movie_table
ORDER BY test_chars;