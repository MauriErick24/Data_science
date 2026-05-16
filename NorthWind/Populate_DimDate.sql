BEGIN TRAN

DECLARE @startdate DATE = '1996-07-04',
        @enddate   DATE = '1998-05-06';

-- Si no existe fecha inicial, tomar la menor fecha existente
IF @startdate IS NULL
BEGIN
    SELECT TOP 1
           @startdate = FullDate
    FROM dbo.DimDate
    ORDER BY DateKey ASC;
END

WHILE (@startdate <= @enddate)
BEGIN

    -- Evitar insertar fechas duplicadas
    IF NOT EXISTS (
        SELECT 1
        FROM dbo.DimDate
        WHERE FullDate = @startdate
    )
    BEGIN

        INSERT INTO dbo.DimDate
        (
            DateKey,
            FullDate,
            [Year],
            [Quarter],
            [Month],
            [Day]
        )
        VALUES
        (
            CONVERT(INT, CONVERT(VARCHAR(8), @startdate, 112)), -- YYYYMMDD
            @startdate,
            YEAR(@startdate),
            DATEPART(QUARTER, @startdate),
            MONTH(@startdate),
            DAY(@startdate)
        );

    END

    SET @startdate = DATEADD(DAY, 1, @startdate);

END

COMMIT TRAN;