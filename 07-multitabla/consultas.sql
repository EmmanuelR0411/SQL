/* Los JOINS nos permiten fusionar la informacion de multiples tablas */

/* Mostrar las entradas con el nombre del autor y la categoria */
SELECT entradas.id, entradas.titulo, usuarios.nombre, categorias.nombre
FROM entradas 
-- Gracias al inner join hacemos la coneccion entre las tres tablas
INNER JOIN usuarios ON entradas.usuario_id = usuarios.id
INNER JOIN categorias ON entradas.categoria_id = categorias.id; 

/* La consulta se puede acortar  */
SELECT e.id, e.titulo, u.nombre, c.nombre
FROM entradas e 
-- Gracias al inner join hacemos la coneccion entre las tres tablas
-- hacemos referencias a las tablas mediante las FK
INNER JOIN usuarios u ON e.usuario_id = u.id
INNER JOIN categorias c ON e.categoria_id = c.id; 

/* OBTENER EL NUMERO DE ENTRADAS DE CATEGORIAS */
SELECT c.nombre, COUNT(e.id) FROM categorias c
INNER JOIN entradas e ON e.categoria_id = c.id GROUP BY e.categoria_id;