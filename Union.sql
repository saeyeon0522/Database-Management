/* UNION : removes duplicate rows */
SELECT R.A
FROM R, S
WHERE R.A = S.A
UNION
SELECT R.A
FROM R, T
WHERE R.A = T.A;


/* UNION ALL : x removes duplicates */
SELECT R.A
FROM R, S
WHERE R.A = S.A
UNION ALL
SELECT R.A
FROM R, T
WHERE R.A = T.A;