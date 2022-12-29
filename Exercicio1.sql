Select  c.CustomerKey, c.FirstName,  SUM(OrderQuantity*UnitPrice) as 'Gasto Total De Cada Cliente'
From FactInternetSales fts inner join 
DimCustomer c on c.CustomerKey=fts.CustomerKey 
group by c.CustomerKey, c.FirstName
Order by  'Gasto Total De Cada Cliente' Desc