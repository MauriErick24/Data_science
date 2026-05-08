CREATE PROCEDURE [dbo].[DW_MergeFactSales]
AS
BEGIN

    UPDATE fs
    SET
         [OrderDateKey]    = sc.[OrderDateKey]
        ,[RequiredDateKey] = sc.[RequiredDateKey]
        ,[ShippedDateKey]  = sc.[ShippedDateKey]

        ,[CustomerSK]      = sc.[CustomerSK]
        ,[EmployeeSK]      = sc.[EmployeeSK]
        ,[ShipperSK]       = sc.[ShipperSK]
        ,[ProductSK]       = sc.[ProductSK]

        ,[Quantity]        = sc.[Quantity]
        ,[UnitPrice]       = sc.[UnitPrice]
        ,[Discount]        = sc.[Discount]
        ,[SalesAmount]     = sc.[SalesAmount]

        ,[OrderDate]       = sc.[OrderDate]
        ,[RequiredDate]    = sc.[RequiredDate]
        ,[ShippedDate]     = sc.[ShippedDate]

    FROM [dbo].[FactSales] fs
    INNER JOIN [staging].[sales] sc
        ON fs.[OrderID] = sc.[OrderID]
       AND fs.[ProductID] = sc.[ProductID]

END
GO