-- VISTAS SIMPLES

-- Vista simple: Empleados con salario sobre $1.000.000
CREATE VIEW v_empleado_alto_salario AS
SELECT id, nombre, salario
FROM t_empleado
WHERE salario > 1000000;

-- Vista simple: Empleados contratados este año
CREATE VIEW v_empleado_nuevo AS
SELECT nombre, fecha_contrato, salario
FROM t_empleado
WHERE YEAR(fecha_contrato) = YEAR(CURDATE()); -- Curdate: Fecha Actual

-- VISTA COMPLEJA

-- VISTA COMPLEJA: Empleados con información del departamento
CREATE VIEW v_empleado_detalle AS
SELECT 
    e.id, 
    e.nombre, 
    e.salario, 
    d.nombre AS departamento
FROM t_empleado e
INNER JOIN t_departamento d
ON e.departamento_id = d.id; 

-- CONSULTAR VISTAS

-- Se consultan igual que una tabla normal
SELECT * FROM v_empleado_alto_salario;

-- OPERACIONES DML en vistas simples

-- INSERT (solo en vistas simples actualizables)
INSERT INTO v_empleado_alto_salario(id,nombre,salario)
    VALUES(151,'Juan Pérez',1550000);

-- UPDATE
UPDATE v_empleado_alto_salario
    SET salario = salario * 1.1
    WHERE id = 13;

-- DELETE
DELETE FROM v_empleado_alto_salario
    WHERE salario < 1100000;