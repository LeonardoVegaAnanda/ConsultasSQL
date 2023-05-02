
SELECT TOP(10)*
FROM CRD1

SELECT TOP(10)*
FROM OCRD




SELECT d.cardcode, d.Address,d.Street,d.Block,d.ZipCode,d.City,d.County,d.country,d.TaxCode
FROM CRD1 d
INNER JOIN OCRD c ON c.cardcode = d.cardcode
WHERE c.U_IV_MAG_ID IS NOT NULL






SELECT *
FROM OITM
WHERE ItemCode = '63613'



SELECT 
e.ItemCode,
e.ItemName,
g.ItmsGrpNam,
e.OnHand
FROM OITM e
INNER JOIN OITB g ON e.ItmsGrpCod = g.ItmsGrpCod
WHERE g.ItmsGrpNam LIKE 'BISUT%' AND OnHand > 1


SELECT TOP(100)*
FROM OWHs

SELECT *
FROM OITB

SELECT *
FROM OITG