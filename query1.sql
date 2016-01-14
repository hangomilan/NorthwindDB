SELECT 
    o.OrderID,
    p.ProductID,
    p.ProductName,
    p.UnitPrice,
    od.Quantity,
    od.Discount
FROM
    orders o inner join
    orderdetails od on o.OrderID = od. OrderID
    inner join
    products p on p.ProductID = od.ProductID;

SELECT 
    o.OrderID,
    p.ProductID,
    p.ProductName,
    p.UnitPrice,
    od.Quantity,
    od.Discount,
	((p.UnitPrice * od.Quantity)*(1 - od.Discount)) as Total
FROM
    orders o inner join
    orderdetails od on o.OrderID = od. OrderID
    inner join
    products p on p.ProductID = od.ProductID order by OrderID;