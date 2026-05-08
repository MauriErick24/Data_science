CREATE PROCEDURE [dbo].[DW_MergeDimCustomer]
AS
BEGIN

    UPDATE dc
    SET
         [CompanyName] = sc.[CompanyName]
        ,[City]        = sc.[City]
        ,[Region]      = sc.[Region]
        ,[Country]     = sc.[Country]

    FROM [dbo].[DimCustomer] dc
    INNER JOIN [staging].[customer] sc
        ON dc.[CustomerSK] = sc.[CustomerSK]

END
GO