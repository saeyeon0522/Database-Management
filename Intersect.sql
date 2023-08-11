/* INTERSECT */
SELECT R.A
FROM R, S
WHERE R.A = S.A
INTERSECT
SELECT R.A
FROM R, T
WHERE R.A = T.A;


/* Same result (num of columns, Data type)
   No duplicates
   Remove null values if exist*/
SELECT Name, BirthDate FROM Employee
INTERSECT
SELECT Name, BirthDate FROM Customer;

SELECT Name, BirthDate FROM Employee
INTERSECT
SELECT Age, BirthDate, Name FROM Customer