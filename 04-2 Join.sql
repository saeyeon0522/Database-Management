/* Product(PName, Price, Category, Manufacturer)
   Company(CName, StockPrice, Country) */
SELECT PName, Price
FROM Product, Company
WHERE Manufacturer = CName
AND Country = 'Korea'
AND Price <= 200;

/* Joins : return all unique combinations of tuples
          which meet some specified join condition */
SELECT PName, Price
FROM Product
JOIN Company ON Manufacturer = Cname
AND Country = 'Korea'
WHERE Price <= 200
