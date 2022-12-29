create view compras as 
Select c.CustomerKey, c.FirstName, fts.UnitPrice 
From DimCustomer c inner join FactInternetSales fts on fts.CustomerKey=c.CustomerKey
where fts.SalesAmount >=2500 group by c.CustomerKey, c.FirstName, fts.UnitPrice