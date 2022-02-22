
/*
There are two tables
The people table holds columbs of unique info and a forign key 'first_name'
 which contains the same number, as the primary key, to the list of names table  
The fst_name holds a list of first names and its primary key 'fst_name_id'
*/

-- Make a view table called birthdays
CREATE VIEW birthdays AS
SELECT people.people_id AS id, people.birthday AS Birthday, fst_name.first_name AS "Given Name"
FROM [people] JOIN [fst_name] ON people.first_name=fst_name.fst_name_id
ORDER BY people.people_id
