CREATE DATABASE secuencias;
USE secuencias;

CREATE TABLE t_usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO t_usuario (nombre, email)
    VALUES ('Fernando Pérez','fp@email.com'),
            ('Antonieta García','ag@email.com');

SELECT * FROM t_usuario;


CREATE TABLE t_producto(
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL (10,2)
) AUTO_INCREMENT = 1000;

INSERT INTO t_PRODUCTO (nombre, precio)
    VALUES ('Notebook', 890000.00),
            ('Mouse',14990.00);

SELECT * FROM t_producto;