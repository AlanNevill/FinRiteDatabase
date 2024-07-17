CREATE TABLE [dbo].[TransMLvalidate] (
    [Id]      INT           IDENTITY (1, 1) NOT NULL,
    [TransId] INT           NOT NULL,
    [Tcat2]   VARCHAR (20)  NOT NULL,
    [Tdesc]   VARCHAR (200) NOT NULL,
    [TdescML] VARCHAR (200) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

