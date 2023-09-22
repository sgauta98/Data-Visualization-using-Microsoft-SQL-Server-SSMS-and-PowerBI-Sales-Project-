SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] as ProductCode --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  , 
  p.[EnglishProductName] as [Product Name], 
  ps.[EnglishProductSubcategoryName] as [Sub Category], 
  pc.[EnglishProductCategoryName] as [Product Category] --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  , 
  p.[Color] as [Product Color] --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  , 
  ISNULL (p.[Size], 'NA') as [Product Size] --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  , 
  ISNULL (p.[ProductLine], 'NA') as [Product Line] --,[DealerPrice]
  --,[Class]
  --,[Style]
  , 
  ISNULL (
    p.[ModelName], 'Model name unavailable'
  ) as [Product Model Name] --,[LargePhoto]
  , 
  ISNULL (
    p.[EnglishDescription], 'Description unavailable'
  ) as [Product Description] --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  , 
  ISNULL (p.[Status], 'Item Outdated') as [Product Status] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] as p 
  --Joins to retrieve Sub Category and Product Category columns
  LEFT JOIN dbo.DimProductSubcategory as ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory as pc on ps.ProductCategoryKey = pc.ProductCategoryKey 
order by 
  p.ProductKey asc
