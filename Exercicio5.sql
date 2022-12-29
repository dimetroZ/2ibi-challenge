--CREATE VIEW vwCompras AS --
Select c.CustomerKey, c.FirstName, Count(c.CustomerKey) as Compras
from DimCustomer c inner join FactInternetSales fts on fts.CustomerKey=c.CustomerKey
group by c.CustomerKey, c.FirstName order by Compras DESC
/*Nao tem nenhum relacionamento entre a tabela DimDate e FactInternetSales & desta forma 
nao tenho mostrar as compras feitas nas datas que sao solicitado no exercicio*/
