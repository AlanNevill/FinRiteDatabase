
CREATE PROCEDURE [dbo].spTransUpdTcat2 
	@FromTcat2		varchar(20),
	@ToTcat2		varchar(20),
	@numUpdated		int out

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	update Trans set Tcat2 = @ToTcat2 where Tcat2 = @FromTcat2;

	-- return the number of rows updated
	select @numUpdated = @@ROWCOUNT;

END