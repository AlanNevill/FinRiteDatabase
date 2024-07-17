

CREATE VIEW [dbo].vImportHeader
AS
	SELECT	*
			, case 
				when NumberPredicted is null then null
				else (cast(NumberPredicted as real)/cast(NumberOfTrans as real))
				end as PredictedPercent
	FROM dbo.ImportHeader