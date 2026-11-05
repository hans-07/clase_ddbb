-- Crea BD, tabla y datos.

DROP DATABASE IF EXISTS funciones_de_conversion;

CREATE DATABASE funciones_de_conversion;

USE funciones_de_conversion;

CREATE TABLE t_venta
    (
    id INT PRIMARY KEY,
    producto VARCHAR(100),
    precio VARCHAR(20),    -- Almacenado como texto
    cantidad VARCHAR(10),    -- Almacenado como texto
    fecha_venta VARCHAR(50)    -- Almacenado como texto
    );

INSERT INTO t_venta VALUES
    (1, 'Notebook', '550900.50', '4', '2025-10-01'),
    (2, 'Mouse', '9999.99', '7', '2024-09-07'),
    (3, 'Teclado', '17500.00', '6', '2025-08-13'),
    (4, 'Monitor', '150000.75', '5', '2025-03-20'),
    (5, 'Impresora', '75000.75', '8', '2024-10-20');

SELECT producto, CAST(precio AS DECIMAL(10,2))*CAST(cantidad AS SIGNED)AS total FROM t_venta;

-- Mostrar todos los productos vendidos el segundo semestre del 2025
SELECT id, producto, precio, cantidad, fecha_venta
FROM t_venta
WHERE CAST(fecha_venta AS DATE) BETWEEN '2025-07-01' AND '2025-12-31';

/* Genere un listado de productos, en donde se despliegue el proucto
y su precio, ordenado numericamente de menor a mayor por precio*/
SELECT producto,precio 
FROM t_venta
ORDER BY CAST(precio AS INT) ASC;

-- Correcion: es con decimal
SELECT preducto, precio
FROM t_venta
ORDER BY CAST(precio AS DECIMAL(10,2));

SELECT 
    producto,
    CONCAT('$',precio) AS precio_formato,
    cantidad,
    DATE_FORMAT(CAST(fecha_venta AS DATE),'%d%m%Y') AS fecha_formato
FROM t_venta;
