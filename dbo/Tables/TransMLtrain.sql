CREATE TABLE [dbo].[TransMLtrain] (
    [Id]      INT           IDENTITY (1, 1) NOT NULL,
    [Tcat2]   VARCHAR (20)  NULL,
    [Tdesc]   VARCHAR (200) NULL,
    [TdescML] VARCHAR (200) NULL,
    [Word1]   VARCHAR (50)  NULL,
    [Word2]   VARCHAR (50)  NULL,
    [TransId] INT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

