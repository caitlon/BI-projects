-- Cleansed DIM Product Table --
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS [ProductItem Code], 
  --,[ProductSubcategoryKey], 
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode] 
  p.[EnglishProductName] AS [Product Name], 
  ps.EnglishProductSubcategoryName AS SubCategory, -- Joined in from Sub Category Table
  pc.EnglishProductCategoryName AS Category, -- Joined in from Category Table
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag] 
  p.[Color], 
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice] 
  p.[Size], 
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  p.[ProductLine] AS [Product Line], 
  --,[DealerPrice]
  --,[Class]
  --,[Style] 
  p.[ModelName] AS [Product Model Name], 
  --,[LargePhoto]
  p.[EnglishDescription] AS [Product Description], 
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate], 
  --,[EndDate], 
  ISNULL (p.[Status], 'Outdated') AS [Product Status]
  -- Looks for p.Status and if it's value is NULL then replaces it with 'Outdated'
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as p
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY p.ProductKey ASC;