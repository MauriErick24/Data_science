USE NorthwindDW;
GO

DROP TABLE IF EXISTS [dbo].[DimEmployee];
GO

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

INSERT INTO [dbo].[DimEmployee]
(
    EmployeeID,
    FullName,
    Title,
    City,
    Country,
    HireDate
)
SELECT 
    EmployeeID,
    FirstName + ' ' + LastName,
    Title,
    City,
    Country,
    HireDate
FROM Northwind.dbo.Employees;
GO

SELECT * FROM [dbo].[DimEmployee];
GO