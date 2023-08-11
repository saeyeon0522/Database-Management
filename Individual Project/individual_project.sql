/* Create Index */

CREATE INDEX idx_address_prefix ON ANIMAL_HOSPITAL(REGEXP_SUBSTR(ADDRESS,'[^ ]+',1,1));
CREATE INDEX name_index ON ANIMAL_HOSPITAL(NAME);



/* Identify Constraints */

SELECT constraint_name, constraint_type
FROM all_constraints
WHERE owner = 'SAEYEON'
    AND table_name = 'ANIMAL_HOSPITAL';

SELECT constraint_name, constraint_type
FROM all_constraints
WHERE owner = 'SAEYEON'
    AND table_name = 'ANIMAL_HOSPITAL_NO_INDEX';



/* To Compare */

select * from ANIMAL_HOSPITAL_NO_INDEX where REGEXP_SUBSTR(ADDRESS,'[^ ]+',1,1) = '서울특별시';
select * from ANIMAL_HOSPITAL where REGEXP_SUBSTR(ADDRESS,'[^ ]+',1,1) = '서울특별시';

select * from ANIMAL_HOSPITAL_NO_INDEX where NAME = '희망동물병원';
select * from ANIMAL_HOSPITAL where NAME = '희망동물병원';
