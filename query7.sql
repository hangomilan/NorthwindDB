SELECT 
    c.CategoryName,
    p.Productname,
    p.QuantityPerUnit,
    p.UnitsInStock
FROM
    categories AS c
        INNER JOIN
    products AS p ON c.categoryid = p.categoryid
WHERE
    p.UnitsInStock > 0
ORDER BY CategoryName , ProductName;