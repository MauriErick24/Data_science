USE NorthwindDW;
GO

DROP TABLE IF EXISTS [dbo].[DimShipper];
GO

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

INSERT INTO [dbo].[DimShipper]
(
    ShipperID,
    CompanyName
)
SELECT 
    ShipperID,
    CompanyName
FROM Northwind.dbo.Shippers;
GO

SELECT * FROM [dbo].[DimShipper];
GO