CREATE TABLE [dbo].[Tcat2s] (
    [Tcat2]            VARCHAR (20)  NOT NULL,
    [Tcat2Description] VARCHAR (100) NOT NULL,
    [Tcat2Tcat1]       VARCHAR (20)  NULL,
    [Tcat2CodeDesc]    AS            (([Tcat2]+' - ')+[Tcat2Description]),
    PRIMARY KEY CLUSTERED ([Tcat2] ASC),
    FOREIGN KEY ([Tcat2Tcat1]) REFERENCES [dbo].[Tcat1s] ([Tcat1])
);

