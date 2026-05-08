CREATE PROCEDURE [dbo].[DW_MergeDimProduct]
AS
BEGIN

    UPDATE dp
    SET
         [ProductName]  = sc.[ProductName]
        ,[CategoryName] = sc.[CategoryName]
        ,[SupplierName] = sc.[SupplierName]
        ,[UnitPrice]    = sc.[UnitPrice]
        ,[Discontinued] = sc.[Discontinued]

    FROM [dbo].[DimProduct] dp
    INNER JOIN [staging].[product] sc
        ON dp.[ProductSK] = sc.[ProductSK]

END
GO