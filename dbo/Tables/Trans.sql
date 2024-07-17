CREATE TABLE [dbo].[Trans] (
    [Id]                   INT             IDENTITY (1, 1) NOT NULL,
    [Trow]                 INT             NOT NULL,
    [Tsource]              VARCHAR (10)    NOT NULL,
    [Tdate]                SMALLDATETIME   NOT NULL,
    [Tdesc]                VARCHAR (200)   CONSTRAINT [DF__Trans__Tdesc__2A4B4B5E] DEFAULT ('') NOT NULL,
    [Tcat2]                VARCHAR (20)    NULL,
    [Tval]                 DECIMAL (10, 2) NOT NULL,
    [tYear]                AS              (datepart(year,[tdate])),
    [tMonth]               AS              (datepart(month,[tdate])),
    [ImportId]             INT             NULL,
    [PredictionConfidence] DECIMAL (7, 6)  NULL,
    CONSTRAINT [PK__Trans__3214EC0738670FAA] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK__Sources__Source] FOREIGN KEY ([Tsource]) REFERENCES [dbo].[Sources] ([Source]),
    CONSTRAINT [FK_Trans_ImportHeader] FOREIGN KEY ([ImportId]) REFERENCES [dbo].[ImportHeader] ([ImportId]) ON DELETE CASCADE,
    CONSTRAINT [FK_Trans_Tcat2s] FOREIGN KEY ([Tcat2]) REFERENCES [dbo].[Tcat2s] ([Tcat2])
);

