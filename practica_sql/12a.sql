use practica;

-- listado de provincias con codigos postales ordenados por poblacion, en la cabecera de las columnas deben
-- aparecer las provincias y en cada columna de los codigos postales de las localidades de cada provincia
select * from codigos_postales;

SELECT
	poblacion,
	IFNULL(MAX(CASE WHEN provincia = 'Barcelona' THEN codigo_postal END), '') AS Barcelona,
	IFNULL(MAX(CASE WHEN provincia = 'Cordoba' THEN codigo_postal END), '') AS Cordoba,
	IFNULL(MAX(CASE WHEN provincia = 'Madrid' THEN codigo_postal END), '') AS Madrid,
	IFNULL(MAX(CASE WHEN provincia = 'Zaragoza' THEN codigo_postal END), '') AS Zaragoza
FROM
    codigos_postales
GROUP BY
    poblacion
ORDER BY
    poblacion;