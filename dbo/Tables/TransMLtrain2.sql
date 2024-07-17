CREATE TABLE [dbo].[TransMLtrain2] (
    [Id]       INT             IDENTITY (1, 1) NOT NULL,
    [TransId]  INT             NOT NULL,
    [Tsource]  VARCHAR (10)    NOT NULL,
    [Tcat2]    VARCHAR (20)    NOT NULL,
    [Tdesc]    VARCHAR (200)   NOT NULL,
    [TdescML2] VARCHAR (200)   NOT NULL,
    [Tval]     DECIMAL (10, 2) NOT NULL,
    [Tcol1]    VARCHAR (50)    NULL,
    [Tcol2]    VARCHAR (50)    NULL,
    [Tdrop1]   VARCHAR (50)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

