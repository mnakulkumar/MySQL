GRANT SELECT ON 
chores
TO Doc;

GRANT DELETE ON
talking_animals
TO Sleepy
WITH GRANT OPTION;

GRANT ALL ON
chores
TO bashful,doc,dopey,grumpy,happy,sleepy,sneezy;

GRANT SELECT ON
woodland_cottage.*
TO doc;


//Exercise 507

REVOKE INSERT, DELETE ON
locations
FROM elsie;

REVOKE INSERT, UPDATE, DELETE ON
clown_info 
FROM elsie;

REVOKE INSERT ON
activities
FROM elsie;

REVOKE DELETE ON
info_location 
FROM elsie CASCADE;

REVOKE INSERT(location), DELETE ON
locations
FROM elsie;

REVOKE data_entry
FROM doc;