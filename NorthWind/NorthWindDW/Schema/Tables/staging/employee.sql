CREATE TABLE [staging].[employee]
(
    [EmployeeSK]   INT NULL,
    [EmployeeID]   INT NOT NULL,
    [FullName]     NVARCHAR(100) NOT NULL,
    [Title]        NVARCHAR(30) NULL,
    [City]         NVARCHAR(15) NULL,
    [Country]      NVARCHAR(15) NULL
);
GO