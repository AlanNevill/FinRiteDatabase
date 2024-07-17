

CREATE VIEW [dbo].vTcat2sAndTcat1s
AS
SELECT	 dbo.Tcat2s.Tcat2
		, dbo.Tcat2s.Tcat2Description
		, dbo.Tcat2s.Tcat2CodeDesc
		, dbo.Tcat2s.Tcat2Tcat1
		, dbo.Tcat1s.Tcat1Description
		, dbo.Tcat1s.Tcat1CodeDesc
FROM dbo.Tcat2s 
join dbo.Tcat1s on dbo.Tcat2s.Tcat2Tcat1 = dbo.Tcat1s.Tcat1;