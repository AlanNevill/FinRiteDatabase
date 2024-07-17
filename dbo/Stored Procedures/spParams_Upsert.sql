
create procedure spParams_Upsert
	@ParamName	varchar(50),
	@ParamValue	sql_variant

as

if exists(select * from Params where ParamName = @ParamName)
		update Params set ParamValue = @ParamValue where ParamName = @ParamName
	else
		insert Params(ParamName, ParamValue) values (@ParamName, @ParamValue)