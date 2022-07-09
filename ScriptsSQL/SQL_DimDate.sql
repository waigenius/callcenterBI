CREATE TABLE dbo.DimDate (
   DateKey INT NOT NULL PRIMARY KEY,
   [Date] DATETIME NOT NULL,
   [Day] TINYINT NOT NULL,
   [WeekDayName] VARCHAR(10) NOT NULL,
   [MonthName] VARCHAR(10) NOT NULL,
   [Year] INT NOT NULL,
   IsWeekend BIT NOT NULL,
   )

  
   GO


   SET NOCOUNT ON

TRUNCATE TABLE DimDate

DECLARE @CurrentDate DATE = '2018-01-01'
DECLARE @EndDate DATE = '2030-12-31'

WHILE @CurrentDate < @EndDate
BEGIN
   INSERT INTO [dbo].[DimDate] (
      [DateKey],
      [Date],
      [Day],
      [WeekDayName],
      [MonthName],
      [Year],
      [IsWeekend]
      )
   SELECT DateKey = YEAR(@CurrentDate) * 10000 + MONTH(@CurrentDate) * 100 + DAY(@CurrentDate),
      DATE = @CurrentDate,
      Day = DAY(@CurrentDate),
      WeekDayName = DATENAME(dw, @CurrentDate),
      [MonthName] = DATENAME(mm, @CurrentDate),
      [Year] = YEAR(@CurrentDate),
      [IsWeekend] = CASE 
         WHEN DATENAME(dw, @CurrentDate) = 'Sunday'
            OR DATENAME(dw, @CurrentDate) = 'Saturday'
            THEN 1
         ELSE 0
         END

   SET @CurrentDate = DATEADD(DD, 1, @CurrentDate)
END
