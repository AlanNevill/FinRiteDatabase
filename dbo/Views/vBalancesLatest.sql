
/*
Uses vBalancesMonth view which has sum of Tval and Closing Balance by year and month.
Joins on itself to return only the latest year month.
*/

CREATE VIEW [dbo].vBalancesLatest
AS
	SELECT	a.Tsource
			,Sources.Description
			,a.YearMonth
			,a.ClosingBal
	FROM vBalancesMonth a
	LEFT OUTER JOIN vBalancesMonth b
		ON a.Tsource = b.Tsource
		AND a.YearMonth < b.YearMonth
	Join Sources
		on Sources.Source = a.Tsource
	WHERE b.YearMonth IS NULL