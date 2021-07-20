-- Creamos la base de datos
CREATE DATABASE Blog;
-- Utilizamos la BD creada
USE Blog;

-- Creacion de las tablas sin FK

-- Creacion de la tabla usuarios
CREATE TABLE usuarios (
    -- Creamos la PK de la tabla, no puede ser nula e incrementa automaticamente
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    -- Creamos el campo email y lo declaramos UNIQUE, lo que signiica que no puede tener valores repetidos
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL
);
-- Creamos la tabla categorias
CREATE TABLE categorias (
    -- Creamos la PK de la tabla, no puede ser nula e incrementa automaticamente
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Creacion de las tablas con FK

-- Creamos la tabla entrada
CREATE TABLE entradas (
    -- Creamos la PK de la tabla, no puede ser nula e incrementa automaticamente
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    --Creamos los campos para las llaves foraneas
    usuario_id INT NOT NULL,
    categoria_id INT NOT NULL,
    /****************************************/
    
    titulo VARCHAR(200) NOT NULL,
    descripcion TEXT,
    fecha DATE NOT NULL,

    -- Declaracion de las llaves foraneas de la tabla
    /* 
    *CASCADE: Borra o actualiza el regista tabla padre y automáticamente borra o actualiza 
    *los registros coincidentes en la tabla hija.
    *
    *NO ACTION: No se permite borrar o actualizar ningún valor de clave primaria si en la tabla hija 
    *hay un valor de clave foránea relacionada.
    *
    *RESTRICT: Rechaza la operación de eliminación o actualización en la tabla padre. 
    *
    **NO ACTION y RESTRICT son similares en tanto omiten la cláusula ON DELETE u ON UPDATE. 
    */
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id) ON DELETE CASCADE ON UPDATE CASCADE
);