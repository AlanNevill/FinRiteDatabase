CREATE TABLE [dbo].[Tcat1s] (
    [Tcat1]            VARCHAR (20)  NOT NULL,
    [Tcat1Description] VARCHAR (100) NOT NULL,
    [Tcat1CodeDesc]    AS            (([Tcat1]+' - ')+[Tcat1Description]),
    PRIMARY KEY CLUSTERED ([Tcat1] ASC)
);

