CREATE TABLE [staging].[sales]
(
    [OrderID]          INT NOT NULL,
    [ProductID]        INT NOT NULL,

    [OrderDateKey]     INT NOT NULL,
    [RequiredDateKey]  INT NOT NULL,
    [ShippedDateKey]   INT NULL,

    [CustomerSK]       INT NULL,
    [EmployeeSK]       INT NULL,
    [ShipperSK]        INT NULL,
    [ProductSK]        INT NULL,

    [Quantity]         INT NOT NULL,
    [UnitPrice]        MONEY NOT NULL,
    [Discount]         FLOAT NOT NULL,
    [SalesAmount]      MONEY NOT NULL,

    [OrderDate]        DATE NOT NULL,
    [RequiredDate]     DATE NOT NULL,
    [ShippedDate]      DATE NULL
);
GO