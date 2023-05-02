




---Identificar pedidos con error ----
SELECT Code, U_IdMagento IdMagento, U_CodigoSN ClienteSAP, U_FechaContabilizacion Fecha, U_Comentarios Comentarios
,U_RFC RFC, U_RazonSocial, U_Email, U_Mensaje ERROR
from [@IV_MAG_MKTDOC_CAB]
WHERE U_Estatus = -1
AND U_FechaInsert > DATEADD(day, -15, GETDATE())
ORDER BY convert(int,code) DESC
---------------------


--Insert pra corregir erro en pedido----
UPDATE [@IV_MAG_MKTDOC_CAB]
SET U_CodigoSN = 2067, U_Estatus = 0
wHERE Code = 20310

----
El estatus del pedido siempre debe ser 0
Code =  Codigo del documento con error o faltante
---


---Validar la correccion ---
SELECT *
from [@IV_MAG_MKTDOC_CAB]
where Code = 20310

SELECT *
from [@IV_MAG_MKTDOC_CAB]
where U_FechaInsert > DATEADD(day, -15, GETDATE())



