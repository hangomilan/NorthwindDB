SELECT 
    City, CompanyName, ContactName, ("Customer") as Relationship
FROM
    customers 
UNION all SELECT 
    City, CompanyName, ContactName, ("Supplier") as Relationship
FROM
    suppliers
order by City;