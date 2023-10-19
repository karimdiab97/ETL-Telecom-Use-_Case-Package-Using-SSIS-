USE ETL_TECOM_PROJECT
go

CREATE TABLE Error_Source_Output (
	id int identity(1,1),
    [Flat File Source Error Output Column] varchar(max),
    [ErrorCode] int,
    [ErrorColumn] int
)
ALTER TABLE Error_Source_Output ALTER COLUMN [Flat File Source Error Output Column] NVARCHAR(MAX)
SELECT * FROM Error_Source_Output eso
TRUNCATE TABLE Error_Source_Output
SELECT * FROM error_Destination_output
truncate TABLE Error_Destination_Output
alter table err_source_output add audit_id int;