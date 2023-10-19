USE TECOM_Project
GO 

CREATE TABLE fact_Transcation 
(
Id INT NOT NULL IDENTITY (1,1),
Transcation_id INT NOT NULL ,
Imsi VARCHAR(9) NOT NULL ,
Subscriber_id INT,
Tac VARCHAR(8) NOT NULL,
Snr VARCHAR(6) NOT NULL,
Imei VARCHAR(14) NULL,
Cell INT NOT NULL,
Lac INT NOT NULL,
Event_Type VARCHAR(2) NULL,
Event_Ts Datetime NOT NULL,
Audit_id INT NOT NULL DEFAULT (-1),
CONSTRAINT pk_Fact_Transaction_id PRIMARY KEY (Id)
)
GO
alter table fact_Transcation
ADD CONSTRAINT Fk_Fact_transaction_Dim_Audit FOREIGN KEY (Audit_id) references Dim_Audit(id)

ALTER TABLE fact_Transcation ALTER COLUMN TAC VARCHAR(8) NULL
ALTER TABLE fact_Transcation ALTER COLUMN snr VARCHAR(8) NULL
ALTER TABLE fact_Transcation ALTER COLUMN Transcation_id INT NOT null

SELECT * FROM fact_Transcation ft
TRUNCATE TABLE fact_Transcation
SELECT * FROM Dim_Audit
