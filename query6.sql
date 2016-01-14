SELECT 
    ProductName, UnitPrice
FROM
    products
WHERE
    UnitPrice > (SELECT 
            AVG(UnitPrice)
        FROM
            products)
ORDER BY UnitPrice;