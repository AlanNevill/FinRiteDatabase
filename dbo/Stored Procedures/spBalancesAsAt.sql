
CREATE PROCEDURE [dbo].spBalancesAsAt
	-- Add the parameters for the stored procedure here
	@AsAtDate		smalldatetime

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	with myData as (
		select
		Tsource
		,max(Tdate) as MaxDate
		,sum(tval) as BalanceAt 
		from Trans
		where Tdate <= @AsAtDate
		group by Tsource
		)
	select
		Sources.Source
		,Sources.Description
		,MaxDate
		,BalanceAt
	from myData
	right outer join Sources
		on Sources.Source = myData.Tsource
	order by 1;

END