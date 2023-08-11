/* Arithmetic operation in SELECT clause */
SELECT a * 2 FROM Number;

/* Alias in SELECT clause */
SELECT a as RESULT From Number;

/* Concatenate in SELECT clause */
SELECT a || ',' || b as A_B FROM Number;


/* DISTINCT : Eliminate duplicates */
SELECT DISTINCT Category
FROM Product;


/* s LIKE p : pattern matching on strings
   % = any sequence of chars
   _ = any single char */
SELECT *
FROM Products
WHERE PName LIKE 'SAEN%'; /* all lines start with SAEN */

SELECT *
FROM Products
WHERE PName LIKE '%SAEN%'; /* all lines including SAEN*/

SELECT *
FROM Products
WHERE PName LIKE 'S__'; /* all lines start with S & follow by random two characters*/


/* ORDER BY : sort results (ascending)
   DESC : descending order */
SELECT Pname, Price, Manufacturer
FROM  Product
WHERE Category='saen' AND Price > 50 /* single quotes for constants */
ORDER BY Price, Pname;


/* BETWEEN (in WHERE clause) */
SELECT a
FROM Number
WHERE a
BETWEEN 10 AND 30;

