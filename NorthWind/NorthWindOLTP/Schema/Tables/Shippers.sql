CREATE TABLE [dbo].[Shippers]
(
    [ShipperID]     [int] IDENTITY(1,1) NOT NULL,
    [CompanyName]   [nvarchar](40)      NOT NULL,
    [Phone]         [nvarchar](24)      NULL,
    [rowversion]    [timestamp]         NOT NULL
);
GO

ALTER TABLE [dbo].[Shippers]
ADD CONSTRAINT [PK_Shippers]
PRIMARY KEY ([ShipperID]);
GO