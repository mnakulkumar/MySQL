SELECT date_name
FROM black_book
WHERE
rating IN ('innovative','fabulous','delightful','pretty good');

SELECT date_name
FROM black_book
WHERE
rating NOT IN ('innovative','fabulous','delightful','pretty good');

//Excercise 113

SELECT date_name FROM black_book
WHERE date_name  NOT BETWEEN 'A' AND 'C';