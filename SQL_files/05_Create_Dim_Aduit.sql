USE TECOM_Project
GO 

create table Dim_Audit 
(
	Id int identity(1,1) not null primary key,
	Batch_Id int,
	Package_Name nvarchar(255) not null,
	File_name nvarchar(255) not null,
	Rows_Extracted int, -- rows in the source file
	Rows_Inserted int,
	--rows_updated int,
	Rows_Rejected int,
	Created_Time datetime default(getdate()),
	Updated_Time datetime default(getdate()),
	SuccessfullProcessingIn nchar(1) not null default 'N'
)
GO

SET IDENTITY_INSERT Dim_Audit ON

insert into Dim_Audit (Id, Batch_Id, Package_Name, File_name, Rows_extracted, Rows_inserted, Rows_rejected)
values (-1,0, 'Unknown','Unknown',null,null,null)

SET IDENTITY_INSERT dim_audit OFF

-- add audit id filed to error tables
alter table[Error_Source_Output] add Audit_id int not null default(-1);
alter table [Error_Destination_Output] add Audit_id int not null default(-1);







