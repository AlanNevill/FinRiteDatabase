CREATE TABLE [dbo].[ImportHeader] (
    [ImportId]         INT             IDENTITY (1, 1) NOT NULL,
    [ImportDateTime]   DATETIME        NOT NULL,
    [UploadDateTime]   DATETIME        NOT NULL,
    [SourceId]         VARCHAR (10)    NOT NULL,
    [ImportFileName]   VARCHAR (100)   NOT NULL,
    [ImportFileTab]    VARCHAR (50)    NULL,
    [NumberOfTrans]    INT             NOT NULL,
    [ImportValue]      DECIMAL (10, 2) NOT NULL,
    [OpeningBalance]   DECIMAL (10, 2) NOT NULL,
    [ClosingBalance]   AS              ([ImportValue]+[OpeningBalance]),
    [NumberPredicted]  INT             NULL,
    [PredictedPercent] AS              (case when [NumberPredicted] IS NULL then NULL else CONVERT([real],[NumberPredicted])/CONVERT([real],[NumberOfTrans]) end),
    CONSTRAINT [PK_ImportHeader_ImportId] PRIMARY KEY CLUSTERED ([ImportId] ASC),
    CONSTRAINT [FK_SourceImportHeader] FOREIGN KEY ([SourceId]) REFERENCES [dbo].[Sources] ([Source])
);

