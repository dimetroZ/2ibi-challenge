Select Top 30 psc.ProductSubcategoryKey, psc.EnglishProductSubcategoryName, count(psc.ProductSubcategoryKey) as TotalVendas
From DimProductCategory pc  inner join DimProductSubcategory psc on pc.ProductCategoryKey=psc.ProductCategoryKey inner join
DimProduct p on p.ProductSubcategoryKey = psc.ProductSubcategoryKey inner join FactInternetSales fts
on fts.ProductKey = p.ProductKey
group by psc.ProductSubcategoryKey, psc.EnglishProductSubcategoryName
Order By TotalVendas Desc
/* A tabela FactInternetsales nao com as categorias dos produtos mais sim a subcategorias que as mesma com as categorias */
