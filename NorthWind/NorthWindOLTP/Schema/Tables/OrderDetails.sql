CREATE TABLE [dbo].[OrderDetails]
(
    [OrderID]        [int]       NOT NULL,
    [ProductID]      [int]       NOT NULL,
    [UnitPrice]      [money]     NOT NULL,
    [Quantity]       [smallint]  NOT NULL,
    [Discount]       [real]      NOT NULL,
    [rowversion]     [timestamp] NOT NULL
);
GO

ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [PK_OrderDetails]
PRIMARY KEY ([OrderID], [ProductID]);
GO

ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [FK_OrderDetails_Orders]
FOREIGN KEY ([OrderID])
REFERENCES [dbo].[Orders] ([OrderID]);
GO

ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [FK_OrderDetails_Products]
FOREIGN KEY ([ProductID])
REFERENCES [dbo].[Products] ([ProductID]);
GO

ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [DF_OrderDetails_UnitPrice]
DEFAULT ((0)) FOR [UnitPrice];
GO

ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [DF_OrderDetails_Quantity]
DEFAULT ((1)) FOR [Quantity];
GO

ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [DF_OrderDetails_Discount]
DEFAULT ((0)) FOR [Discount];
GO

ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [CK_OrderDetails_UnitPrice]
CHECK ([UnitPrice] >= 0);
GO

ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [CK_OrderDetails_Quantity]
CHECK ([Quantity] > 0);
GO

ALTER TABLE [dbo].[OrderDetails]
ADD CONSTRAINT [CK_OrderDetails_Discount]
CHECK ([Discount] >= 0 AND [Discount] <= 1);
GO