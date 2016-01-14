SELECT 
    o.orderid, (od.UnitPrice * od.Quantity) AS ordertotal
FROM
    orders AS o
        INNER JOIN
    orderdetails AS od ON o.orderid = od.orderid;