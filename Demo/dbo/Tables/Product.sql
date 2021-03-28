CREATE TABLE [dbo].[Product] (
    [Id]          BIGINT         IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (100) NOT NULL,
    [Price]       MONEY          NOT NULL,
    [Description] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [chk_Price] CHECK ([Price]>(0)),
    CONSTRAINT [UQ_Name] UNIQUE NONCLUSTERED ([Name] ASC)
);

