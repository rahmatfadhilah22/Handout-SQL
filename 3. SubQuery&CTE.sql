/*
	Pada topik ini kita akan membahas mengenai SubQuery dan CTE Common Table Expression
*/

SELECT prod.ProductName,
       (
		    SELECT SUM(ordet.Quantity)
			FROM dbo.[Order Details] AS ordet
			WHERE ordet.ProductID = prod.ProductID
		) AS [Total Quantity]

FROM dbo.Products AS prod
ORDER BY [Total Quantity] DESC



WITH TotalQuantity AS (
    SELECT ordet.ProductID,
           SUM(ordet.Quantity) AS [Total Quantity]
    FROM dbo.[Order Details] AS ordet
    GROUP BY ordet.ProductID
)
SELECT prod.ProductName,
       tq.[Total Quantity]
FROM dbo.Products AS prod
INNER JOIN TotalQuantity AS tq ON tq.ProductID = prod.ProductID
ORDER BY tq.[Total Quantity] DESC

