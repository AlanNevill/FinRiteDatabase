

CREATE VIEW [dbo].[vSourcesDTO]
AS
	SELECT S.[Source]
		  ,S.[Description]
		  ,S.SourceCodeDesc
		  ,S.Tcat2Id
		  ,S.UsesMlPredict
		  ,case when S.UsesMlPredict = 0 then 'no' else 'yes' end as UsesMlPredictText
		  ,S.IsSpendingNegative
		  ,case when S.IsSpendingNegative = 0 then 'positive' else 'negative' end as SignConventionText
		  ,S.AccountRef
		  ,S.UploadFileName
		  ,S.UploadFileTab
		  ,S.UploadFileJSON
		  ,S.UploadDateTime
		  ,null as ImportFileName
		  ,null as ImportFileTab
		  ,null as ImportDateTime
		  ,Tcat2s.Tcat2Description
		  ,Tcat2s.Tcat2Tcat1
		  ,T.LastTdate
		  ,T.TransCount
		  ,ETL.EtlLastTdate
		  ,ETL.TransEtlCount
		  ,ETL.ETLtval
		  ,BL.YearMonth
		  ,BL.ClosingBal
	from Sources S
	left outer join Tcat2s on Tcat2s.Tcat2 = S.Tcat2Id
	left outer join (select Tsource,max(Tdate) as LastTdate,    Count(*) as TransCount							from Trans    group by Tsource) T   on T.Tsource   = S.Source
	left outer join (select Tsource,max(Tdate) as EtlLastTdate, Count(*) as TransEtlCount, sum(Tval) as ETLtval from TransETL group by Tsource) ETL on ETL.TSource = S.Source
	left outer join vBalancesLatest BL on BL.Tsource = S.Source