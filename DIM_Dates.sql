SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  --[DayNumberOfWeek], 
  [EnglishDayNameOfWeek] AS Day, 
  Left([EnglishDayNameOfWeek], 3) AS DayAbbv, 
  --[SpanishDayNameOfWeek], 
  --[FrenchDayNameOfWeek], 
  --[DayNumberOfMonth], 
  --[DayNumberOfYear], 
  --[WeekNumberOfYear], 
  [EnglishMonthName] AS Month, 
  Left([EnglishMonthName], 3) AS MonthAbbv, 
  --[SpanishMonthName], 
  --[FrenchMonthName], 
  [MonthNumberOfYear] AS MonthNum, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
  --[CalendarSemester], 
  --[FiscalQuarter], 
  --[FiscalYear], 
  --[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate] 
WHERE 
  CalendarYear >= 2012
  
