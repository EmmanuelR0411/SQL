/* Podemos renombrear una tabla */
ALTER TABLE usuarios RENAME TO usuarios_renom;

/* Renombrar una tabla */
ALTER TABLE usuarios_renom CHANGE apellidos apellido VARCHAR(50) NULL;

/* Modificar la columna sin cambiar el nombre */
ALTER TABLE usuarios_renom MODIFY apellido VARCHAR(50) NOT NULL;

/* Añadir una columna */
ALTER TABLE usuarios_renom ADD website VARCHAR(50);

/* Añadir restriccion a una columna, uq_email es el nombre de la restriccion y le decimos que va a ser
ser un campo unico (no puede contener dos emails que sean iguales) */
ALTER TABLE usuario_renom ADD CONSTRAIN uq_email UNIQUE(email);

/* Borrar una columna */
ALTER TABLE usuario_renom DROP website;