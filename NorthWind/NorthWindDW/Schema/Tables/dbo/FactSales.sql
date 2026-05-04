CREATE TABLE [dbo].[FactSales]
(
    [OrderID] INT NOT NULL,
    [ProductID] INT NOT NULL,

    [OrderDateKey] INT NOT NULL,
    [RequiredDateKey] INT NOT NULL,
    [ShippedDateKey] INT NULL,

    [CustomerSK] INT NULL,
    [EmployeeSK] INT NULL,
    [ShipperSK] INT NULL,
    [ProductSK] INT NULL,

    [Quantity] INT NOT NULL,
    [UnitPrice] MONEY NOT NULL,
    [Discount] FLOAT NOT NULL,
    [SalesAmount] MONEY NOT NULL,

    [OrderDate] DATE NOT NULL,
    [RequiredDate] DATE NOT NULL,
    [ShippedDate] DATE NULL
);
GO

ALTER TABLE [dbo].[FactSales]
ADD CONSTRAINT PK_FactSales PRIMARY KEY (OrderID, ProductID);
GO

/*ALTER TABLE [dbo].[FactSales]
ADD CONSTRAINT FK_FactSales_DimCustomer
FOREIGN KEY (CustomerSK)
REFERENCES [dbo].[DimCustomer] (CustomerSK);
GO*/

ALTER TABLE [dbo].[FactSales]
ADD CONSTRAINT FK_FactSales_DimProduct
FOREIGN KEY (ProductSK)
REFERENCES [dbo].[DimProduct] (ProductSK);
GO

ALTER TABLE [dbo].[FactSales]
ADD CONSTRAINT FK_FactSales_DimEmployee
FOREIGN KEY (EmployeeSK)
REFERENCES [dbo].[DimEmployee] (EmployeeSK);
GO

ALTER TABLE [dbo].[FactSales]
ADD CONSTRAINT FK_FactSales_DimShipper
FOREIGN KEY (ShipperSK)
REFERENCES [dbo].[DimShipper] (ShipperSK);
GO

/*ALTER TABLE [dbo].[FactSales]
ADD CONSTRAINT FK_FactSales_OrderDate
FOREIGN KEY (OrderDateKey)
REFERENCES [dbo].[DimDate] (DateKey);
GO

ALTER TABLE [dbo].[FactSales]
ADD CONSTRAINT FK_FactSales_RequiredDate
FOREIGN KEY (RequiredDateKey)
REFERENCES [dbo].[DimDate] (DateKey);
GO

ALTER TABLE [dbo].[FactSales]
ADD CONSTRAINT FK_FactSales_ShippedDate
FOREIGN KEY (ShippedDateKey)
REFERENCES [dbo].[DimDate] (DateKey);
GO*/