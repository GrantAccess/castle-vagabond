/*
Routine of birthdays.sql
a script to make a view table, looking at two other tables with foreign key relationship
by <https://github.com/GrantAccess/castle-vagabond/> (CC)
the author has not changed this document since Tuesday 22 Feb 2022
*/

/*
There are two tables
The people table holds columns of unique info and a foreign key 'first_name'
 which contains the same number, as the primary key, to the list of names table
The fst_name holds a list of first names and its primary key 'fst_name_id'
*/

-- Make a view table called birthdays
CREATE VIEW birthdays AS
SELECT people.people_id AS id, people.birthday AS Birthday, fst_name.first_name AS "Given Name"
FROM [people] JOIN [fst_name] ON people.first_name=fst_name.fst_name_id
ORDER BY people.people_id
