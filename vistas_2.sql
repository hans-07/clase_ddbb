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