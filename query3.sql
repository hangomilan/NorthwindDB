SELECT 
    o.ShipName,
    o.ShipAddress,
    o.ShipCity,
    o.ShipRegion,
    o.ShipPostalCode,
    o.ShipCountry,
    o.CustomerID,
    c.Address,
    c.City,
    c.Region,
    c.PostalCode,
    c.Country,
    (CONCAT(e.FirstName, ' ', e.LastName)) AS Salesperson,
    o.OrderID,
    o.OrderDate,
    o.RequiredDate,
    o.ShippedDate,
    s.CompanyName,
    od.ProductID,
    p.ProductName,
    od.UnitPrice,
    od.Quantity,
    od.Discount,
    ((od.UnitPrice * od.Quantity) * (1 - od.Discount)) AS Total,
    o.Freight
FROM
    orders AS o
        INNER JOIN
    customers AS c ON o.CustomerID = c.CustomerID
        INNER JOIN
    employees AS e ON o.employeeID = e.employeeID
        INNER JOIN
    shippers AS s ON O.ShipVia = S.shipperid
        INNER JOIN
    orderdetails AS od ON o.orderid = od.orderid
        INNER JOIN
    products AS p ON od.productid = p.productid
ORDER BY CustomerID;