

CREATE VIEW [dbo].[vTrans]
AS
	SELECT	Trans.Id
			, Trans.Trow
			, Trans.Tsource
			, vSourcesDTO.SourceCodeDesc
			, Trans.Tdate
			, Trans.Tdesc
			, Trans.Tcat2
			, Trans.ImportId
			, Trans.PredictionConfidence
			, Tcat2s.Tcat2Tcat1
			, Tcat2s.Tcat2Description
			, Tcat2s.Tcat2CodeDesc
			, Trans.Tval
			, (datepart(year,  Trans.Tdate)) as Tyear
			, (datepart(month, Trans.Tdate)) as Tmonth
			, CONVERT(char(7), Trans.Tdate, 23) AS YrMonth
			, Tcat1s.Tcat1Description
			, Tcat1s.Tcat1CodeDesc
			, IH.ImportDateTime
			, IH.ImportFileName
			, ISNULL(IH.ImportFileTab, 'n/a') as ImportFileTab
	from Trans 
	JOIN Tcat2s on Trans.Tcat2 = Tcat2s.Tcat2
	join Tcat1s on Tcat2s.Tcat2Tcat1 = Tcat1s.Tcat1
	join ImportHeader IH on IH.ImportId = Trans.ImportId
	join vSourcesDTO on vSourcesDTO.Source = Trans.Tsource