/* Traer informacion que cumpla con los requisitos que se le dan con el where */
SELECT nombre, email FROM usuarios WHERE id = 4;
SELECT * FROM usuarios WHERE email = 'emmanuel@gmail.com';

/* OPERADORES DE COMPARACION: 
Igual = 
Distinto != 
Menor < 
Mayor > 
Menor o igual <= 
Mayor o igual >= 
Entre between A and B 
En in 
Es nulo is null 
No nulo is not null 
Como like 
No es como not like 
*/ 

-- Ejemplos
SELECT nombre, apellido FROM usuarios WHERE YEAR(fecha) = '2021' OR YEAR(fecha) = '2020' ; 
SELECT nombre, apellido FROM usuarios WHERE YEAR(fecha) >= '2019'; 

SELECT nombre, apellido FROM usuarios WHERE YEAR(fecha) = '2021'; 
-- De esta forma solo le indicaos el año a buscar
-- YEAR() nos permite mandar el año que se quiere comparar y no una fecha en especifico

/* Los que no se han registrado en 2020 */
SELECT nombre, apellido FROM usuarios WHERE YEAR(fecha) != '2020' OR ISNULL(fecha);

/* Seleccionar registros por dos columnas */
SELECT nombre, apellido FROM usuarios WHERE email = 'emmanuel@gmail.com' AND password = '1234';

/* Elementos que contengan un texto */
SELECT * FROM usuarios WHERE nombre LIKE '%o%';
/* AL PONER LA o ENTRE % TRAE TODOS LOS NOMBRES QUE CONTENGAN UNA o 
si solo se le pone el % al principio solo trae los elementos que terminen en o (palabra o letra)
si lo tiene al final es los que terminen con la letra o palabra designada, en este caso la o*/ 


