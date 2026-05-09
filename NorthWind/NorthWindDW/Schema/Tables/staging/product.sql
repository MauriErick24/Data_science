CREATE TABLE [staging].[product]
(
    [ProductSK]      INT NULL,
    [ProductID]      INT NOT NULL,
    [ProductName]    NVARCHAR(40) NOT NULL,
    [CategoryName]   NVARCHAR(50) NULL,
    [SupplierName]   NVARCHAR(50) NULL,
    [UnitPrice]      MONEY NULL,
    [Discontinued]   BIT NOT NULL
);
GO
