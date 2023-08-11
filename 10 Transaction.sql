/* TXN : sequence of operations reflects single real-world transition*/
START TRANSACTION
    UPDATE Product
    SET Price = Price – 1.99
    WHERE pname = 'Saen'
COMMIT;

/* ad-hoc SQL default : each statement = 1 txn
   multiple statements can be grouped together as 1 txn in a program */
START TRANSACTION
    UPDATE Bank SET amount = amount – 100
    WHERE name = 'Saeyeon'
    UPDATE Bank SET amount = amount + 100
    WHERE name = 'Cherry'
COMMIT


INSERT INTO SmallProduct(name, price)
SELECT pname, price
FROM Product
WHERE price <= 0.99
/* Crash / Abort */
DELETE Product
WHERE price <=0.99;

/* Fine commands */
START TRANSACTION
    INSERT INTO SmallProduct(name, price)
    SELECT pname, price
    FROM Product
    WHERE price <= 0.99
    DELETE Product
    WHERE price <=0.99
COMMIT OR ROLLBACK;


/* Crash / Abort commands */
UPDATE Product
SET Price = Price – 1.99
WHERE pname = 'saen';
UPDATE Product
SET Price = Price * 0.5
WHERE pname = 'saen';

/* Charm commands */
START TRANSACTION
    UPDATE Product
    SET Price = Price – 1.99
    WHERE pname = 'Saen'
COMMIT;
START TRANSACTION
    UPDATE Product
    SET Price = Price * 0.5
    WHERE pname = 'Saen'
COMMIT;