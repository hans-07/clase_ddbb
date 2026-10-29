-- Conversion de texto a numero

-- Convertir string a entero(resultado: 123)
-- Nota: Entre "CAST" y el "("no puede haber espacio 
SELECT CAST('123' AS SIGNED) AS numero;

-- Convertir string a decimal(resultado: 123.45) 
SELECT CAST('45.67' AS DECIMAL(10,2)) AS precio;
