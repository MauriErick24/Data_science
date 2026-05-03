USE NorthwindDW;
GO

DROP TABLE IF EXISTS DimShipper;
GO

CREATE TABLE DimShipper (
    ShipperKey INT IDENTITY(1,1) PRIMARY KEY,
    ShipperID INT,
    CompanyName NVARCHAR(100)
);
GO

INSERT INTO DimShipper (ShipperID, CompanyName)
SELECT 
    ShipperID,
    CompanyName
FROM Northwind.dbo.Shippers;
GO

SELECT * FROM DimShipper;