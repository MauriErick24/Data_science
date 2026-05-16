CREATE TABLE dbo.DimDate
(
    DateKey INT NOT NULL PRIMARY KEY,

    -- Fecha completa
    FullDate DATE NOT NULL UNIQUE,

    -- Día
    DayNumberOfWeek TINYINT NOT NULL,
    DayNameOfWeek VARCHAR(20) NOT NULL,
    DayNumberOfMonth TINYINT NOT NULL,
    DayNumberOfYear SMALLINT NOT NULL,

    -- Semana
    WeekNumberOfYear TINYINT NOT NULL,

    -- Mes
    MonthName VARCHAR(20) NOT NULL,
    MonthNumberOfYear TINYINT NOT NULL,

    -- Trimestre
    CalendarQuarter TINYINT NOT NULL,

    -- Año
    CalendarYear SMALLINT NOT NULL,

    -- Semestre
    CalendarSemester TINYINT NOT NULL
);