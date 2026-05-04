CREATE TABLE [dbo].[DimProduct]
(
    [ProductSK] INT IDENTITY(1,1) NOT NULL,
    [ProductID] INT NOT NULL,
    [ProductName] NVARCHAR(40) NOT NULL,
    [CategoryName] NVARCHAR(50) NULL,
    [SupplierName] NVARCHAR(50) NULL,
    [UnitPrice] MONEY NULL,
    [Discontinued] BIT NOT NULL
);
GO

ALTER TABLE [dbo].[DimProduct]
ADD CONSTRAINT PK_DimProduct PRIMARY KEY (ProductSK);
GO