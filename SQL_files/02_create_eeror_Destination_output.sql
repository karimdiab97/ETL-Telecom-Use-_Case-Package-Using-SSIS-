USE TECOM_Project
go

CREATE TABLE Error_Destination_Output 
(
    [id] int,
    [imsi] varchar(9),
    [imei] varchar(14),
    [cell] int,
    [lac] int,
    [event_type] varchar(1),
    [event_ts] datetime,
	[Tac] VARCHAR(8),
	[Snr] VARCHAR(6),
    [ErrorCode] int,
    [ErrorColumn] int
)
GO
SELECT *FROM Error_Destination_Output edo
TRUNCATE TABLE Error_Destination_Output

alter table Error_Destination_Output add Audit_id int;
