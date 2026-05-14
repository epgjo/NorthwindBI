CREATE TABLE [dbo].[DimDate] (
    [DateKey]    INT          NOT NULL, -- Formato AAAAMMDD (Ej: 20260513)
    [FullDate]   DATE         NOT NULL,
    [Day]        TINYINT      NOT NULL,
    [Month]      TINYINT      NOT NULL,
    [MonthName]  NVARCHAR(15) NOT NULL,
    [Quarter]    TINYINT      NOT NULL,
    [Year]       SMALLINT     NOT NULL,
    [DayOfWeek]  TINYINT      NOT NULL,
    [WeekName]   NVARCHAR(15) NOT NULL,
    CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED ([DateKey] ASC)
);