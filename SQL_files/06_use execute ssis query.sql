-- used queries in Execute SQL task

-- get the next batch id
select max(Batch_Id) + 1 as Batch_id from Dim_Audit 
go

-- Insert into dim audit, to be used inside SSIS / OLEDB Connection
/*
insert into dim_audit ( Batch_id, Package_Name, File_name, Rows_extracted, Rows_Inserted, Rows_Rejected, SuccessfullProcessingIn)
output inserted.id as Audit_Id
values (
	?, -- 0 Batch id
	?, -- 1 Package name
	?, -- 2 File_name
	NULL, -- 3 Rows_extracted
	NULL, -- 4 Rows_inserted
	NULL, -- 5 Rows_rejected
	'N'
	)
go

*/
-- update dim audit, to be used inside SSIS / OLEDB Connection
/*
update Dim_Audit
set 
    [Rows_Extracted] = ? + ?, -- 0  extracted processed + 1 extracted error
    [Rows_Inserted] = ? - ?, -- 2 pre insert -  3 dest error
    [Rows_Rejected] = ? + ?, -- 4 extracted error  +  5 dest error
	SuccessfullProcessingIn = 'Y',
	updated_at = getdate()
where id = ? -- 6 audit_id
*/