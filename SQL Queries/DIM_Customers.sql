--DIMCustomer Table after cleaning
SELECT 
  c.customerkey AS [Customer Key], 
  --[GeographyKey]
  --[CustomerAlternateKey]
  --[Title]
  c.firstname AS [First Name], 
  --[MiddleName]
  c.lastname AS [Last Name], 
  c.firstname + ' ' + c.lastname AS [Full Name], 
  --[NameStyle]
  --[BirthDate]
  --[MaritalStatus]
  --[Suffix]
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS [Gender], 
  --[EmailAddress]
  --[YearlyIncome]
  --[TotalChildren]
  --[NumberChildrenAtHome]
  --[EnglishEducation]
  --[SpanishEducation]
  --[FrenchEducation]
  --[EnglishOccupation]
  --[SpanishOccupation]
  --[FrenchOccupation]
  --[HouseOwnerFlag]
  --[NumberCarsOwned]
  --[AddressLine1]
  --[AddressLine2]
  --[Phone]
  c.datefirstpurchase AS [Date First Purchase], 
  --[CommuteDistance]
  g.city AS [Customer City]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] as c
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC
