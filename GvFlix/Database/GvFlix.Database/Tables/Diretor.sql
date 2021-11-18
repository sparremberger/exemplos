CREATE TABLE [dbo].[Diretor] (
    [Id]                INT             NOT NULL IDENTITY(1, 1),
    [Nome]              NVARCHAR(100)   NOT NULL,
    [DataNascimento]    DATE            NULL,
    CONSTRAINT [PK_Diretor] PRIMARY KEY ([Id])
);
GO

CREATE UNIQUE NONCLUSTERED INDEX [IU_Diretor_Nome]
    ON [dbo].[Diretor] (
	[Nome] ASC
);
GO
