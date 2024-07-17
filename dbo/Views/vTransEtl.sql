

CREATE VIEW [dbo].[vTransEtl]
AS
	SELECT	dbo.TransETL.Id
			, dbo.TransETL.Trow
			, dbo.TransETL.Tsource
			, dbo.TransETL.Tdate
			, dbo.TransETL.Tdesc
			, dbo.TransETL.Tval
			, FORMAT(dbo.TransETL.Tval, '###,###,##0.00', 'en-uk') as TvalFormatted
			, dbo.TransETL.Tcat2
			, case
				when dbo.TransETL.Tcat2By = 'M' then 'Model'
				when dbo.TransETL.Tcat2By = 'H' then 'User'
				else null
			  end as Tcat2By
			, dbo.TransETL.PredictionConfidence
			, dbo.Tcat2s.Tcat2Description
			, dbo.Tcat2s.Tcat2CodeDesc
			, CONVERT(char(7), dbo.TransETL.Tdate, 23) AS YrMonth
			, dbo.Tcat2s.Tcat2Tcat1
			, dbo.Tcat1s.Tcat1Description
			, dbo.Tcat1s.Tcat1CodeDesc
	FROM dbo.TransETL 
	left outer JOIN dbo.Tcat2s on dbo.TransETL.Tcat2 = dbo.Tcat2s.Tcat2
	left outer join dbo.Tcat1s on dbo.Tcat2s.Tcat2Tcat1 = dbo.Tcat1s.Tcat1