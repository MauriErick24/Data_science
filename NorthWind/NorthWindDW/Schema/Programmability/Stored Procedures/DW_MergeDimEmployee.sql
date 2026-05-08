CREATE PROCEDURE [dbo].[DW_MergeDimEmployee]
AS
BEGIN

    UPDATE de
    SET
         [FullName] = sc.[FullName]
        ,[Title]    = sc.[Title]
        ,[City]     = sc.[City]
        ,[Country]  = sc.[Country]

    FROM [dbo].[DimEmployee] de
    INNER JOIN [staging].[employee] sc
        ON de.[EmployeeSK] = sc.[EmployeeSK]

END
GO