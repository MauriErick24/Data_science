CREATE TABLE [dbo].[Region]
(
    [RegionID]             [int]       NOT NULL,
    [RegionDescription]    [nchar](50) NOT NULL,
    [rowversion]           [timestamp] NOT NULL
);
GO

ALTER TABLE [dbo].[Region]
ADD CONSTRAINT [PK_Region]
PRIMARY KEY ([RegionID]);
GO