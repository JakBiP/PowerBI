SELECT 
       c.[CustomerKey]
      ,[FirstName]
      ,[LastName]
      ,c.FirstName + ' ' + c.LastName AS [FullName]
      ,CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Sex
      ,[DateFirstPurchase]
      ,g.city AS[Customer City]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
  LEFT JOIN [dbo].dimgeography AS g
  ON g.geographykey = c.geographykey
  ORDER BY
  CustomerKey ASC