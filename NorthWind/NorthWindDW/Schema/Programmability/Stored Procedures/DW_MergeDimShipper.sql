CREATE PROCEDURE [dbo].[DW_MergeDimShipper]
AS
BEGIN

    UPDATE ds
    SET
         [CompanyName] = sc.[CompanyName]

    FROM [dbo].[DimShipper] ds
    INNER JOIN [staging].[shipper] sc
        ON ds.[ShipperSK] = sc.[ShipperSK]

END
GO