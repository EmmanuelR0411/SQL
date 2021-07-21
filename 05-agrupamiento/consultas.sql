/* Consulta para obtener el nnumero de entradas por categorias */
/* Con esta consulta nos arroja cuantos titulos de la tabla entradas tienen los id(cuantos id=1 hay
cuantos id=2 hay ...)muestra la cantidad (COUNT) y el id (categoria_id) */
-- COUNT nos ayuda a contar el numero de registros
SELECT COUNT(titulo) AS 'Numero de entradas Emmanuel', categoria_id FROM entradas GROUP BY categoria_id;
-- AS sirve par ponerle el nombre a la columna en donde se mostraran el numero de titulos

/* Hace lo mismo que el anterior pero solo cuando el contador es mayor o igual a cuatro */
SELECT COUNT(titulo) AS 'Numero de entradas Emmanuel', categoria_id FROM entradas GROUP BY categoria_id
HAVING COUNT(titulo) >= 4;

/* AVG permite el promedio de elementos numericos */
SELECT AVG(id) AS 'Promedio id Emmanuel' FROM entradas; 
/* MAX nos permite obtener el numero mayor */
SELECT MAX(id) AS 'Maximo id' FROM entradas;
/* MIN nos permite obtener el numero menor */
SELECT MIN(id) AS 'Minimo id' FROM entradas;
/* SUM nos permite sumar los elementos numericos */
SELECT SUM(id) AS 'Suma id' FROM entradas;
/* Obtener el primedio del id de las entradas cuya categoria id = 1 */
SELECT AVG(id) AS 'Promedio id = 1' FROM entradas WHERE id = 1;

