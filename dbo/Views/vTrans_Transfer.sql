

CREATE VIEW [dbo].[vTrans_Transfer]
AS
select	Upper(Tsource) as Tsource
		,Upper(Tcat2) as Tcat2
		,sum(tval) as TvalTotal
from Trans 
where Tcat2 in (select Tcat2 from Tcat2s join Tcat1s on Tcat2s.Tcat2Tcat1 = Tcat1s.Tcat1 where Tcat1 = 'transfer') 
group by Tsource,Tcat2;