CREATE TABLE [dbo].[Order] (
    [Id]        BIGINT   IDENTITY (1, 1) NOT NULL,
    [ProductId] BIGINT   NOT NULL,
    [OrderDate] DATETIME CONSTRAINT [DF_OrderDatedefault] DEFAULT (getdate()) NOT NULL,
    [Quantity]  INT      NOT NULL,
    CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Orders_Products] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]) ON DELETE CASCADE
);

