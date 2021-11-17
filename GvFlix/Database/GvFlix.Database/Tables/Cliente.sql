CREATE TABLE [dbo].[Cliente] (
    [Id]                INT             NOT NULL IDENTITY(1, 1),
    [Nome]              NVARCHAR(100)   NOT NULL,
    [DataNascimento]    DATE            NULL,
    CONSTRAINT [PK_Cliente] PRIMARY KEY ([Id])
);
GO
