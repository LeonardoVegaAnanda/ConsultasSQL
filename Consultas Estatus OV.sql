
Select 
U_DateLiberacion as "Por Surtir",
U_DateSurtido1 as "Inicio Surtido",
U_DateSurtido2 as "Termino Surtido",
U_DateVerificado as "Inicio Verificado",
U_DateVerificado2 as "Termino Verificado"
FROM ORDR
WHERE DocNum = 568136

Select 
U_LPComision as "Liberado Ventas",
U_DateLiberacion as "Por Surtir",
U_DateSurtido1 as "Inicio Surtido",
U_DateSurtido2 as "Termino Surtido",
U_DateVerificado as "Inicio Verificado",
U_DateVerificado2 as "Termino Verificado"
FROM ORDR
WHERE DocNum = 568134



UPDATE ORDR SET 
U_DateLiberacion = 
CONVERT(varchar(20),GETDATE(),120)
WHERE U_EstatusOV = 1 AND DocNum = 630656

UPDATE ORDR SET 
U_DateSurtido1 = 
CONVERT(varchar(20),GETDATE(),120)
WHERE U_EstatusOV = 2 AND DocNum = 630417

UPDATE ORDR SET 
U_DateSurtido2 = 
CONVERT(varchar(20),GETDATE(),120)
WHERE U_EstatusOV = 3 AND DocNum = 630417

UPDATE ORDR SET 
U_DateVerificado = 
CONVERT(varchar(20),GETDATE(),120)
WHERE U_EstatusOV = 4 AND DocNum = 630656

UPDATE ORDR SET 
U_DateVerificado2 = 
CONVERT(varchar(20),GETDATE(),120)
WHERE U_EstatusOV = 4 AND DocNum = 630656



if $[ORDR.U_EstatusOV] = 1
BEGIN
DECLARE @D DATETIME 
SET @D = GETDATE()
SELECT CONVERT(varchar(20), @D , 120)
END