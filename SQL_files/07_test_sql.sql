SELECT * FROM fact_Transcation ft
SELECT * FROM Dim_Audit da
SELECT * FROM Error_Destination_Output edo
SELECT * FROM Error_Source_Output eso

TRUNCATE TABLE fact_Transcation
TRUNCATE TABLE Error_Destination_Output
TRUNCATE TABLE Error_Source_Output