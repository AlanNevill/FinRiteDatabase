
CREATE PROCEDURE [dbo].spParams_Accessed_upd 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	update Params set ParamValue = getDate() where ParamName = 'Accessed';

END