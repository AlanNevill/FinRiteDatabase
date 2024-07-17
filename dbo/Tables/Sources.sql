CREATE TABLE [dbo].[Sources] (
    [Source]             VARCHAR (10)   NOT NULL,
    [Description]        VARCHAR (100)  DEFAULT ('') NOT NULL,
    [UsesMlPredict]      BIT            DEFAULT ((0)) NOT NULL,
    [AccountRef]         VARCHAR (50)   NULL,
    [UploadFileName]     VARCHAR (200)  NULL,
    [UploadFileTab]      VARCHAR (50)   NULL,
    [SourceCodeDesc]     AS             (([Source]+' - ')+[Description]),
    [UploadFileJSON]     NVARCHAR (500) NULL,
    [UploadDateTime]     DATETIME       NULL,
    [Tcat2Id]            VARCHAR (20)   NOT NULL,
    [IsSpendingNegative] BIT            DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Source] ASC),
    CONSTRAINT [FK_Sources_Tcat2Id] FOREIGN KEY ([Tcat2Id]) REFERENCES [dbo].[Tcat2s] ([Tcat2]) ON DELETE CASCADE
);

