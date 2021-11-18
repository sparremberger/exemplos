CREATE TABLE [dbo].[Ator] (
    [Id]                INT             NOT NULL IDENTITY (1, 1),
    [Nome]              NVARCHAR(100)   NOT NULL,
    [DataNascimento]    DATE            NULL,
    CONSTRAINT [PK_Ator] PRIMARY KEY ([Id])
);
GO

CREATE UNIQUE NONCLUSTERED INDEX [IU_Ator_Nome]
    ON [dbo].[Ator] (
    [Nome] ASC
);
GO
