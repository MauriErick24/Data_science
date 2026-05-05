CREATE TABLE [dbo].[DimDate]
(
    [DateKey] INT NOT NULL,
    [FullDate] DATE NOT NULL,
    [Year] INT NOT NULL,
    [Quarter] INT NOT NULL,
    [Month] INT NOT NULL,
    [Day] INT NOT NULL
);
GO

ALTER TABLE [dbo].[DimDate]
ADD CONSTRAINT PK_DimDate PRIMARY KEY (DateKey);
GO
