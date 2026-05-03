USE NorthwindDW;
GO

DROP TABLE IF EXISTS DimEmployee;
GO

CREATE TABLE DimEmployee (
    EmployeeKey INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT,
    FullName NVARCHAR(100),
    Title NVARCHAR(50),
    City NVARCHAR(50),
    Country NVARCHAR(50),
    HireDate DATE
);
GO

INSERT INTO DimEmployee (EmployeeID, FullName, Title, City, Country, HireDate)
SELECT 
    EmployeeID,
    FirstName + ' ' + LastName,
    Title,
    City,
    Country,
    HireDate
FROM Northwind.dbo.Employees;
GO

SELECT * FROM DimEmployee;