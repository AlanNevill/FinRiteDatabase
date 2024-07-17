

CREATE VIEW [dbo].vBalancesMonth
AS
	with data as (
	  select
		Tsource
		,FORMAT(tDATE, 'yyyy-MM') as YearMonth
		,sum(tval) as TvalMonth 
		,count(*) as NumOfTrans
	  from Trans
	  group by Tsource, FORMAT(tDATE, 'yyyy-MM')
)

select
	Tsource
	,Sources.Description
	,YearMonth
	,TvalMonth
	,sum(TvalMonth) over (partition by Tsource order by YearMonth asc rows between unbounded preceding and current row) as ClosingBal
	,NumOfTrans
from data
Join Sources
	on Sources.Source = data.Tsource