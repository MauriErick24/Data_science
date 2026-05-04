CREATE TABLE [dbo].[DimShipper]
(
    [ShipperSK] INT IDENTITY(1,1) NOT NULL,
    [ShipperID] INT NOT NULL,
    [CompanyName] NVARCHAR(40) NOT NULL
);
GO

ALTER TABLE [dbo].[DimShipper]
ADD CONSTRAINT PK_DimShipper PRIMARY KEY (ShipperSK);
GO