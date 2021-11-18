CREATE TABLE [dbo].[ClienteFilme] (
    [Id]                INT             NOT NULL IDENTITY(1, 1),
    [ClienteId]         INT             NOT NULL,
    [FilmeId]           INT             NOT NULL,
    [DataRetirada]      DATETIME        NOT NULL,
    [DataPrevisao]      DATETIME        NOT NULL,
    [DataDevolucao]     DATETIME        NULL,
    [Observacao]        NVARCHAR(500)   NULL,
    CONSTRAINT [PK_ClienteFilme] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_ClienteFilme_Cliente] FOREIGN KEY ([ClienteId]) REFERENCES [dbo].[Cliente] ([Id]),
    CONSTRAINT [FK_ClienteFilme_Filme] FOREIGN KEY ([FilmeId]) REFERENCES [dbo].[Filme] ([Id])
);
GO
