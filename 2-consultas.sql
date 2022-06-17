CREATE DATABASE IF NOT EXISTS cobrando;

USE cobrando;

CREATE TABLE IF NOT EXISTS departamento (
    codigo INT(12) AUTO_INCREMENT, 
    nombre VARCHAR(100) NOT NULL,
    presupuesto FLOAT NOT NULL,
    CONSTRAINT pk_departamento PRIMARY KEY(codigo)
);

CREATE TABLE IF NOT EXISTS empleado (
    codigo INT(12) AUTO_INCREMENT, 
    codigo_departamento INT(12) NOT NULL,
    nif VARCHAR(9) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido1 VARCHAR(100) NOT NULL,
    apellido2 VARCHAR(100),
    CONSTRAINT pk_empleado PRIMARY KEY(codigo),
    CONSTRAINT fk_empleado_departamento FOREIGN KEY(codigo_departamento) REFERENCES departamento(codigo) 
);

INSERT INTO `departamento` (`codigo`, `nombre`, `presupuesto`) VALUES (NULL, 'Ingenieria', '40000000');

INSERT INTO `departamento` (`codigo`, `nombre`, `presupuesto`) VALUES (NULL, 'Ventas', '30000000');

INSERT INTO `departamento` (`codigo`, `nombre`, `presupuesto`) VALUES (NULL, 'Recursos Humanos', '80000000');

INSERT INTO `empleado` (`codigo`, `codigo_departamento`, `nif`, `nombre`, `apellido1`, `apellido2`) VALUES (NULL, '1', '112754985', 'JUAN', 'MORALES', 'TAMES');

INSERT INTO `empleado` (`codigo`, `codigo_departamento`, `nif`, `nombre`, `apellido1`, `apellido2`) VALUES (NULL, '3', '14785695', 'MARCO', 'PEREZ', 'GONZALEZ');

INSERT INTO `empleado` (`codigo`, `codigo_departamento`, `nif`, `nombre`, `apellido1`, `apellido2`) VALUES (NULL, '2', '789456321', 'LAURA', 'MIRANDA', 'AYALA');

SELECT d.nombre, d.presupuesto, e.nombre, e.apellido1, e.apellido2 FROM empleado as e JOIN departamento as d ON e.codigo_departamento=d.codigo;

