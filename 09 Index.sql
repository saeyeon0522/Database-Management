SELECT t1.value1
FROM SampleT t1, SampleT t2
WHERE t1.value2 > t2.value2
GROUP BY t1.value1
HAVING t1.value1 > 9990;

/* build index */
CREATE INDEX value2_idx ON SampleT(value2);

/* remove index */
DROP INDEX value2_idx;