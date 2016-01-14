SELECT 
    YEAR(o.OrderDate) AS YearOfIncome,
    c.CategoryName,
    p.ProductName,
    SUM((od.UnitPrice * od.Quantity * (1 - (od.Discount)))) AS ProductSale
FROM
    categories AS c
        INNER JOIN
    products AS p ON c.categoryid = p.categoryid
        INNER JOIN
    orderdetails AS od ON p.productid = od.productid
        INNER JOIN
    orders AS o ON od.orderid = o.orderid
GROUP BY YearOfIncome , p.productname
ORDER BY productname , YearOfIncome;