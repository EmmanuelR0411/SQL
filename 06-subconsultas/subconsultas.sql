/* Las subconsultas son consultas que se ejeutan dentro de otras consultas */


/* Consulta para saber que usuarios tiene publicaciones 
IN permite mandar multiples valores */
SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas);
-- Representamos los valores que recibe la consulta de arriba
SELECT * FROM usuarios WHERE id IN (1,1,1,2,2,2,3,3,3);

/* Obtener los usuarios que tengan alguna entrada que el titulo contenga GTA */
SELECT nombre, apellidos FROM usuarios WHERE id IN (
    SELECT usuario_id FROM entradas WHERE titulo LIKE '%GTA%'
);

/* Obtener todas las entradas de la categoria accion utilizando su nombre */
SELECT categoria_id, titulo FROM entradas WHERE categoria_id IN (
    SELECT id FROM categorias WHERE nombre = 'Deportes'
);

/* Obtener las categorias sin entradas */
SELECT * FROM categoria WHERE id NOT IN(
    SELECT categoria_id FROM entradas
);

/* Mostrar usiarios que creron entrada en martes
DAYOFWEEK nos devuelve el dia pero empieza desde dominogo = 1 */
SELECT * FROM usuarios WHERE id IN(
    SELECT usuario_id FROM entradas WHERE DAYOFWEEK(fecha) = 4
);