CREATE TABLE [dbo].[FilmeAtor] (
    [Id]            INT     NOT NULL IDENTITY(1, 1),
    [FilmeId]       INT     NOT NULL,
    [AtorId]        INT     NOT NULL,
    CONSTRAINT [PK_FilmeAtor] PRIMARY KEY (Id),
    CONSTRAINT [FK_FilmeAtor_Filme] FOREIGN KEY ([FilmeId]) REFERENCES [dbo].[Filme] ([Id]),
    CONSTRAINT [FK_FilmeAtor_Ator] FOREIGN KEY ([AtorId]) REFERENCES [dbo].[Ator] ([Id])
);
GO

CREATE UNIQUE NONCLUSTERED INDEX [IU_FilmeAtor_FilmeAtor]
    ON [dbo].[FilmeAtor] (
    [FilmeId] ASC,
    [AtorId] ASC
);
GO
