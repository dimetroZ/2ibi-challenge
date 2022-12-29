SELECT psc.ProductSubcategoryKey, psc.EnglishProductSubcategoryName, (ShipDate-orderDate) AS Tempo_Medio
    FROM DimProductCategory pc  inner join DimProductSubcategory psc on pc.ProductCategoryKey=psc.ProductCategoryKey inner join
DimProduct p on p.ProductSubcategoryKey = psc.ProductSubcategoryKey inner join FactInternetSales fts
on fts.ProductKey = p.ProductKey
    ORDER BY Tempo_Medio


