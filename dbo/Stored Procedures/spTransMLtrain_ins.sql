
CREATE PROCEDURE [dbo].spTransMLtrain_ins 
	-- Add the parameters for the stored procedure here
	@TransId	int,
	@Tcat2		varchar(20),
	@Tdesc		varchar(200),
	@TdescML	varchar(200)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	insert into TransMLtrain(TransId,
							Tcat2,
							Tdesc,
							TdescML
							)
					values (@TransId,
							@Tcat2,
							@Tdesc,
							@TdescML
							);

END