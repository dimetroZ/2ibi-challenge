Select Top 20  p.ProductKey, p.EnglishProductName,  COUNT(OrderQuantity) as MaisVendido
From FactInternetSales fts inner join 
DimProduct p on p.ProductKey=fts.ProductKey
where fts.OrderDate >= '2005/06/01'
group by p.ProductKey, p.EnglishProductName
Order by MaisVendido Desc