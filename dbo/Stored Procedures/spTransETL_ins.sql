
CREATE PROCEDURE [dbo].spTransETL_ins 
	-- Add the parameters for the stored procedure here
	@Tsource	varchar(10),
	@Trow		int,
	@Tdate		smalldatetime,
	@Tdesc		varchar(200),
	@Tcat2		varchar(20),
	@Tval		Decimal(10,2)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	insert TransETL(		Tsource,
							Trow,
							Tdate,
							Tdesc,
							Tcat2,
							Tval)
					values (@Tsource,
							@Trow,
							@Tdate,
							@Tdesc,
							@Tcat2,
							@Tval
					)

END