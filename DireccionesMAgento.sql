
SELECT TOP(10)*
FROM CRD1

SELECT TOP(10)*
FROM OCRD




SELECT d.cardcode, d.Address,d.Street,d.Block,d.ZipCode,d.City,d.County,d.country,d.TaxCode
FROM CRD1 d
INNER JOIN OCRD c ON c.cardcode = d.cardcode
WHERE c.U_IV_MAG_ID IS NOT NULL