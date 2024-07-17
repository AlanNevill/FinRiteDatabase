

CREATE VIEW [dbo].[vTrans_InterSource]
AS

select	id,
		Upper(Tsource) as Tsource,
		Tdate,
		Tdesc,
		Upper(Tcat2) as Tcat2,
		Tval,
		PredictionConfidence
from Trans 
where Tcat2 in (select Tcat2 
				from Tcat2s
				join Tcat1s on Tcat2s.Tcat2Tcat1 = Tcat1s.Tcat1 
				where Tcat1 = 'transfer') -- List of Tcat2 used for each Source
;