CREATE TABLE [dbo].[AppSettings] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [ValueJSON] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_AppSettings_ID] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [ValueJSON should be formatted as JSON] CHECK (isjson([ValueJSON])=(1))
);

