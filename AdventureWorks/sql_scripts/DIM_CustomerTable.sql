-- Cleansed DIM Customers Table -- 
SELECT 
  [CustomerKey], 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  [FirstName], 
  --,[MiddleName]
  [LastName],
  c.LastName + ' ' + c.FirstName AS FullName,
  --,[NameStyle]
  [BirthDate], 
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.Gender WHEN 'F' THEN 'Female' WHEN 'M' THEN 'Male' END AS Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  [DateFirstPurchase], 
  --,[CommuteDistance]
  g.City AS [Customer City] -- Joined in Customer City from Geography table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g ON g.GeographyKey = c.GeographyKey
  ORDER BY c.CustomerKey ASC;
