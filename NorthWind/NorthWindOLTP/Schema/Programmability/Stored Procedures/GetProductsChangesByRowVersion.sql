CREATE PROCEDURE [dbo].[GetProductsChangesByRowVersion]
(
    @startRow BIGINT,
    @endRow BIGINT
)
AS
BEGIN

    SELECT
        p.ProductID,
        p.ProductName,
        p.UnitPrice,
        c.CategoryName,
        s.CompanyName AS SupplierName,
        p.Discontinued
    FROM dbo.Products p
    INNER JOIN dbo.Categories c
        ON p.CategoryID = c.CategoryID
    INNER JOIN dbo.Suppliers s
        ON p.SupplierID = s.SupplierID
    WHERE
        p.rowversion > CONVERT(ROWVERSION, @startRow)
        AND p.rowversion <= CONVERT(ROWVERSION, @endRow);

END
GO