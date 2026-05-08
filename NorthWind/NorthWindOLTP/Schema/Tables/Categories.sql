CREATE TABLE [dbo].[Categories]
(
    [CategoryID]    [int] IDENTITY(1,1) NOT NULL,
    [CategoryName]  [nvarchar](15)      NOT NULL,
    [Description]   [nvarchar](max)     NULL,
    [Picture]       [image]             NULL,
    [rowversion]    [timestamp]         NOT NULL
);
GO

ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
PRIMARY KEY ([CategoryID]);
GO