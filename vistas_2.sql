-- Vista simple: Empleados con salario sobre $1.000.000
CREATE VIEW v_empleado_alto_salario AS
SELECT id, nombre, salario
FROM t_empleado
WHERE salario > 1000000;

-- Vista simple: Empleados contratados este año
CREATE VIEW v_empleado_nuevo AS
SELECT nombre, fecha_contrato, salario
FROM t_empleado
WHERE YEAR(fecha_contrato) = YEAR(CURDATE());