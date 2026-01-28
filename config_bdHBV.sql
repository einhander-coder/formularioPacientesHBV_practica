CREATE DATABASE IF NOT EXISTS hbv_pruebaformulario;
USE hbv_pruebaformulario;

CREATE TABLE pacientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    genero ENUM('Masculino', 'Femenino', 'Otro') NOT NULL,
    documento_identidad VARCHAR(20) NOT NULL UNIQUE,
    telefono VARCHAR(15),
    email VARCHAR(100),
    direccion TEXT,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO pacientes (nombres, apellidos, fecha_nacimiento, genero, documento_identidad, telefono, email, direccion) 
VALUES 
('Juan', 'Pérez', '1990-05-15', 'Masculino', '12345678', '555-1234', 'juan@email.com', 'Av. Principal 123'),
('María', 'Gómez', '1985-08-22', 'Femenino', '87654321', '555-5678', 'maria@email.com', 'Calle Secundaria 456');