CREATE TABLE [dbo].[TransETL] (
    [Id]                   INT             IDENTITY (1, 1) NOT NULL,
    [Tsource]              VARCHAR (10)    NOT NULL,
    [Trow]                 INT             NOT NULL,
    [Tdate]                SMALLDATETIME   NOT NULL,
    [Tdesc]                VARCHAR (200)   NOT NULL,
    [Tcat2]                VARCHAR (20)    NULL,
    [Tval]                 DECIMAL (10, 2) NOT NULL,
    [Tcat2By]              CHAR (1)        NULL,
    [PredictionConfidence] DECIMAL (7, 6)  DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([Tsource]) REFERENCES [dbo].[Sources] ([Source])
);

