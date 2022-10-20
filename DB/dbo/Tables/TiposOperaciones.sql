CREATE TABLE [dbo].[TiposOperaciones] (
    [Id]          INT           NOT NULL,
    [Descripcion] NVARCHAR (50) NOT NULL,
    [Prueba]      INT           NULL,
    CONSTRAINT [PK_TiposOperaciones] PRIMARY KEY CLUSTERED ([Id] ASC)
);



