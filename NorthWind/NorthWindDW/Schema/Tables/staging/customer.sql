CREATE TABLE [staging].[customer]
(
    [CustomerSK]   INT NULL,
    [CustomerID]   NCHAR(5) NOT NULL,
    [CompanyName]  NVARCHAR(40) NOT NULL,
    [City]         NVARCHAR(15) NULL,
    [Region]       NVARCHAR(15) NULL,
    [Country]      NVARCHAR(15) NULL
);
GO
