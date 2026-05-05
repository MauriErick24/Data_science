CREATE TABLE [dbo].[DimCustomer]
(
    [CustomerSK] INT IDENTITY(1,1) NOT NULL,
    [CustomerID] NCHAR(5) NOT NULL,
    [CompanyName] NVARCHAR(40) NOT NULL,
    [City] NVARCHAR(15) NULL,
    [Region] NVARCHAR(15) NULL,
    [Country] NVARCHAR(15) NULL
);
GO

ALTER TABLE [dbo].[DimCustomer]
ADD CONSTRAINT PK_DimCustomer PRIMARY KEY (CustomerSK);
GO