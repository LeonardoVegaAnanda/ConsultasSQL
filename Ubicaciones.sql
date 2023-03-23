
SELECT
T1."AbsEntry" AS "Codigo de ubicación",
T1."BinCode" AS "UBICACION",
T0."ItemCode" as "ARTICULO",
T5."ItemName" AS "DESCRIPCION",
T0."WhsCode" AS "ALMACEN",
SUM(T2."OnHandQty") as "Stock Ubicacion",
SUM(T0."OnHand") AS "Total Stock Almacen"

FROM
OITW T0
INNER JOIN OBIN T1 ON T0."WhsCode" = T1."WhsCode"
INNER JOIN OIBQ T2 ON T2."WhsCode" = T0."WhsCode" AND T1."AbsEntry" = T2."BinAbs" AND T0."ItemCode" = T2."ItemCode"
LEFT JOIN OITM T5 ON T5."ItemCode" = T0."ItemCode"
WHERE
T2."OnHandQty" > 0
--AND T3."OnHandQty" > 0
GROUP BY
T2."OnHandQty"
, T1."AbsEntry"
, T1."BinCode"
, T0."ItemCode"
, T5."ItemName"
, T0."WhsCode"
, T0."WhsCode"
, T1."BinCode"

ORDER BY
T1."AbsEntry"