CREATE PROCEDURE [dbo].[GetEmployeesChangesByRowVersion]
(
    @startRow BIGINT,
    @endRow BIGINT
)
AS
BEGIN

    SELECT
        EmployeeID,
        FirstName,
        LastName,
        Title,
        City,
        Country,
        HireDate
    FROM dbo.Employees
    WHERE
        rowversion > CONVERT(ROWVERSION,@startRow)
        AND rowversion <= CONVERT(ROWVERSION,@endRow);

END
GO