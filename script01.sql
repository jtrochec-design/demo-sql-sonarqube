CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password_plana VARCHAR(100),
    activo BOOLEAN DEFAULT TRUE
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    usuario_id INT,
    total DECIMAL(10, 2),
    fecha_creacion TIMESTAMP
);
