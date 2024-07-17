
CREATE VIEW [dbo].[vTransMLtrain]
AS
select	 TMT.Id
		,TMT.Tdesc
		,TMT.TdescML
		,TMT.Word1
		,TMT.Word2
		,TMT.Tcat2
		,Tcat2s.Tcat2Description
		,Tcat2s.Tcat2CodeDesc
		,Tcat2s.Tcat2Tcat1
		,Tcat1s.Tcat1Description
		,Tcat1s.Tcat1CodeDesc
FROM TransMLtrain TMT
left outer JOIN Tcat2s on TMT.Tcat2 = dbo.Tcat2s.Tcat2
left outer join Tcat1s on Tcat2s.Tcat2Tcat1 = dbo.Tcat1s.Tcat1;