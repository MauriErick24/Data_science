CREATE TABLE [dbo].[DimEmployee]
(
    [EmployeeSK] INT IDENTITY(1,1) NOT NULL,
    [EmployeeID] INT NOT NULL,
    [FullName] NVARCHAR(100) NOT NULL,
    [Title] NVARCHAR(30) NULL,
    [City] NVARCHAR(15) NULL,
    [Country] NVARCHAR(15) NULL,
    [HireDate] DATE NULL
);
GO

ALTER TABLE [dbo].[DimEmployee]
ADD CONSTRAINT PK_DimEmployee PRIMARY KEY (EmployeeSK);
GO