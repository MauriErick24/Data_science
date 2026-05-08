CREATE PROCEDURE [dbo].[GetOrdersChangesByRowVersion]
(
    @startRow BIGINT,
    @endRow BIGINT
)
AS
BEGIN

    SELECT
        o.OrderID,
        o.CustomerID,
        o.EmployeeID,
        o.OrderDate,
        od.ProductID,
        od.Quantity,
        od.UnitPrice,
        od.Discount
    FROM dbo.Orders o
    INNER JOIN dbo.OrderDetails od
        ON o.OrderID = od.OrderID
    WHERE
        (o.rowversion > CONVERT(ROWVERSION, @startRow)
         AND o.rowversion <= CONVERT(ROWVERSION, @endRow))
    OR
        (od.rowversion > CONVERT(ROWVERSION, @startRow)
         AND od.rowversion <= CONVERT(ROWVERSION, @endRow));

END
GO