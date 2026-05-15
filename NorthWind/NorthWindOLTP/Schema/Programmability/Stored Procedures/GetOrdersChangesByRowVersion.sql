CREATE PROCEDURE [dbo].[GetOrdersChangesByRowVersion]
(
    @startRow BIGINT,
    @endRow BIGINT
)
AS
BEGIN

    SELECT
        o.OrderID,

        -- Date Keys calculadas
        OrderDateKey =
            CONVERT(INT, CONVERT(VARCHAR(8), o.OrderDate, 112)),

        RequiredDateKey =
            CONVERT(INT, CONVERT(VARCHAR(8), o.RequiredDate, 112)),

        ShippedDateKey =
            CASE
                WHEN o.ShippedDate IS NULL THEN 0
                ELSE CONVERT(INT, CONVERT(VARCHAR(8), o.ShippedDate, 112))
            END,

        -- Claves naturales para lookups
        o.CustomerID,
        o.EmployeeID,
        o.ShipVia,

        -- Producto
        od.ProductID,

        -- Métricas
        od.Quantity,
        od.UnitPrice,
        od.Discount,

        SalesAmount =
            od.Quantity * od.UnitPrice * (1 - od.Discount),

        -- Fechas originales
        CAST(o.OrderDate AS DATE) AS OrderDate,
        CAST(o.RequiredDate AS DATE) AS RequiredDate,
        CAST(o.ShippedDate AS DATE) AS ShippedDate

    FROM dbo.Orders o
    INNER JOIN dbo.[Order Details] od
        ON o.OrderID = od.OrderID

    WHERE
        (
            CAST(o.rowversion AS BIGINT) > @startRow
            AND CAST(o.rowversion AS BIGINT) <= @endRow
        )
        OR
        (
            CAST(od.rowversion AS BIGINT) > @startRow
            AND CAST(od.rowversion AS BIGINT) <= @endRow
        );

END
GO