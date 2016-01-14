SELECT 
    c.CategoryName,
    p.ProductName AS CheapestProduct,
    MIN(p.unitprice) AS MinCategoryPrice
FROM
    categories AS c
        INNER JOIN
    products AS p ON c.categoryid = p.categoryid
GROUP BY CategoryName
ORDER BY categoryname;