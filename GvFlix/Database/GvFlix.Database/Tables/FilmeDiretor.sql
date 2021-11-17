CREATE TABLE [dbo].[FilmeDiretor] (
    [Id]                INT             NOT NULL IDENTITY(1, 1),
    [FilmeId]           INT             NOT NULL,
    [DiretorId]         INT             NOT NULL,
    CONSTRAINT [PK_FilmeDiretor] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_FilmeDiretor_Filme] FOREIGN KEY ([FilmeId]) REFERENCES [dbo].[Filme] ([Id]),
    CONSTRAINT [FK_FilmeDiretor_Diretor] FOREIGN KEY ([DiretorId]) REFERENCES [dbo].[Diretor] ([Id])
);
GO

CREATE UNIQUE NONCLUSTERED INDEX [IU_FilmeDiretor_FilmeDiretor]
    ON [dbo].[FilmeDiretor] (
    [FilmeId] ASC,
    [DiretorId] ASC
);
GO
