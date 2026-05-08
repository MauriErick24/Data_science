CREATE PROCEDURE [dbo].[GetCustomersChangesByRowVersion]
(
    @startRow BIGINT,
    @endRow BIGINT
)
AS
BEGIN

    SELECT
        c.CustomerID,
        c.CompanyName,
        c.ContactName,
        c.City,
        c.Region,
        c.Country,
        c.PostalCode,
        c.Phone
    FROM dbo.Customers c
    WHERE
        c.rowversion > CONVERT(ROWVERSION,@startRow)
        AND c.rowversion <= CONVERT(ROWVERSION,@endRow);

END
GO