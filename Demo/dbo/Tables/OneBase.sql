CREATE TABLE [dbo].[OneBase] (
    [Id]   BIGINT        NOT NULL,
    [data] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_OneBase] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OneBase_OneDerived] FOREIGN KEY ([Id]) REFERENCES [dbo].[OneDerived] ([Id])
);

