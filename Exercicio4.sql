Select top 20 p.ProductKey, p.EnglishProductName, Country.SalesTerritoryRegion, count(OrderQuantity) as ProdutosMaisVendidos 
From FactInternetSales fts inner join 
DimProduct p on p.ProductKey=fts.ProductKey INNER JOIN
[DimSalesTerritory] Country on Country.[SalesTerritoryKey] = fts.SalesTerritoryKey
where Country.SalesTerritoryRegion = 'Canada' /* Nas regioes nao tem Torronto e usei o pais da respectiva capltal */
group by p.ProductKey, p.EnglishProductName, Country.SalesTerritoryRegion
Order by ProdutosMaisVendidos Desc
