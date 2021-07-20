/* Creamos una tabla */
CREATE TABLE usuario(
    id  INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre      VARCHAR(50) NOT NULL,
    apellidos   VARCHAR(50) NOT NULL,
    email   VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
);