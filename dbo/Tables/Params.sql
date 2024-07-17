CREATE TABLE [dbo].[Params] (
    [ParamName]  VARCHAR (50) NOT NULL,
    [ParamValue] SQL_VARIANT  NOT NULL,
    PRIMARY KEY CLUSTERED ([ParamName] ASC)
);

