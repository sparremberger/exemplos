CREATE TABLE [dbo].[Filme] (
    [Id]                INT             NOT NULL IDENTITY(1, 1),
    [Nome]              NVARCHAR(100)   NOT NULL,
    [DataLancamento]    DATE            NOT NULL,
    [Duracao]           DATETIME        NOT NULL,
    [Resumo]            NVARCHAR(MAX)   NULL,
    CONSTRAINT [PK_Filme] PRIMARY KEY ([Id])
);
GO

CREATE UNIQUE NONCLUSTERED INDEX [IU_Filme_Nome]
    ON [dbo].[Filme] (
    [Nome] ASC
);
GO
