SELECT { SELECT columna1, columna2 FROM tabla1 }
--    (*) es para seleccionar todo
    DISTINCT { SELECT DISTINCT columna1, columna2 FROM tabla1 } -- Para seleccionar valores únicos. Si selecciono dos columnas serían los valores únicos ente esas dos columnas
    TOP { SELECT TOP (cant_filas) FROM tabla1 } -- en SQLserver para elegir la cantidad de filas que quiero
FROM -- base de datos (Tabla) a consultar
WHERE { SELECT columna1 FROM tabla1 WHERE columna1 = x } -- inmediatamente después de FROM. Evalúa una expresión boolean fila por fila, para devolver la fila si es true (para null o false no devuelve la fila)
    -- Operadores: = ; <> ; < ; > ; <= ; >=
    -- Puede comparase con un literal (string, number, text, boolean, date) o con otra columna: columna_1 < columna_2
    EXTRACT FROM { EXTRACT(YEAR FROM columnaDate) = 2020 } -- para Fechas se puede usar para comparar una parte del valor
    IN -- para seleccionar valores, equivale a poner OR repetidas veces: columna = x OR columna = y OR ...
        NOT IN -- para la selección inversa podemos usar NOT IN
    BETWEEN -- es el equivalente a usar: expression >= low AND expression <= high
        NOT BETWEEN -- para determinar lo contrario al rano interno se puede usar NOT BETWEEN
LIKE { SELECT columna1 FROM tabla1 WHERE columna1 LIKE '%x%' } -- permite elegir datos de los que no conzco toda la información
    /** Wildcards:
        % indica que puede haber más datos a izquierda o derecha
        _ indica un solo carcater
        Ejemplos: **/
        LIKE 'Kim%'	-- match a string that starts with Kim
        LIKE '%ch%'	-- match a string that contains ch
        LIKE 'Le_'	-- match a string that starts with Le and is followed by one character e.g., Les, Len
        LIKE '_uy'	-- match a string that ends with uy and is preceded by one character e.g., guy
    NOT LIKE -- para la indcación inversa se puede usar NOT LIKE
    ESCAPE { expression LIKE 'string' ESCAPE 'ESCAPEcharacter' } -- cuando el string buscado contiene alguna Wildcard, debo indicar que ese caracter no es una Wildcard
        /** Ejemplo
        value LIKE '%10!%%' ESCAPE '!' indica que el caracter seguido de (!) no es una Wildcard sino parte del string
        **/
ORDER BY -- para ordenar primero por una columna, luego por otra declaro las columnas separadas por (,)
    ASC -- en orden ascendente
    DESC -- en orden descendiente
    NULL FIRST -- ubicar nulls primero
    NULL LAST -- ubicar nulls último
GROUP BY { SELECT Column1, aggregateFunction, Column2 FROM Table1 GROUP BY Column1, column2 }
    /** Se suelen usar con funciones de agregación
    AVG, SUM, MIN, MAX, COUNT
    Cuando se usa una fución de agragción en una columna
    todas las demas deben tener funciones de agregación o ser parte de la condición de GROUP BY
    **/
HAVING { SELECT column1, column2, aggregate_function (column3) -- Se coloca inmediatamente después de GROUP BY
        FROM  table1
        GROUP BY column1, column2
        HAVING group_condition }
        /** Se usa para agregar una condición de selección luego de agrupar
        If you use a HAVING clause without a GROUP BY clause, the HAVING clause behaves like a WHERE clause.
        **/
AND -- combina dos expresiones boolean. Puede devolver null si una expresión es true y la otra null, o si ambas son null (si una es false y la otra null devuelve false). Ejemplo de uso: SELECT column FROM table WHERE name = 'name1' AND lastName = 'name2'
OR -- combina dos expresiones boolean. Puede devolver null si una expresión es false y la otra null, o si ambas son null (si una es true y la otra null devuelve true).
/** AND:
        true, null = null
        false, null = false
    OR:
        false, null = null
        true, null = true
**/
CONCAT { CONCAT( field, field, ... ) } -- para unir columnas y/o literles: . Por ejemplo: CONCAT( name, ' - ', last_name )
SUBSTRING { SUBSTRING( field, inicio, #ofCharacters ) } -- para extrer cadenas de texto
LIMIT { SELECT column1 FROM table1 LIMIT #filas } -- En algunos sistemas (PosgreSQL, MySQL)
OFFSET { SELECT column1 FROM table1 LIMIT #filasAdevolver OFFSET #filasAdescartar } -- Para elegir si saltear algunas filas iniciales antes de LIMIT
FETCH {FIRST|NEXT} #rows {ROW|ROWS} ONLY -- similar a LIMIT, aceptada por SQLserver, PostgreSQL, Oracle
AS { SELECT SUM([column1]) AS 'alias' } -- define el nombre de la columna (Alias). Luego de algunas expresiones es necesario renombrar la columna, por ejemplo: CONCAT, FORMAT, SUM, etc
IS NULL { SELECT column1 FROM tabla1 WHERE column1 IS NULL } -- como null no puede compararse (ni siquiera con si mismo) una condición del tipo {col1 = NULL} devolvería NULL, para ello se una IS NULL
    IS NOT NULL -- condición inversa a IS NULL
NOT -- el operador NOT se usa para negar una expresión booleana, si la expresión devuelve NULL entonces NOT también.
    { SELECT column1, column2 FROM table1
        WHERE NOT ( column1 = 10 OR column2 = 20 ) }
INNER JOIN { SELECT column1, column2 FROM table1 INNER JOIN table2 ON condition } -- es lo mismo que usar JOIN solo
    /** Hace un merge con las filas que coinciden en ambas tablas.
        En un digrama de Venn donde cada grupo contiene las filas, sería el conjunto en que coinciden ambos grupos.
        El comando primero evalúa la condición, luego une las tablas y finalmente selecciona las columnas
        por ello cuando seleccionamos alguna columna repetida devulve error de ambigüedad
        para evitar el error se debe indicar a qué tabla pertenece la columna.
        Para mayor practicidad se da un alias a las tablas y se usa ese alias en la selección de columnas
        Para más info: https://www.sqltutorial.org/sql-inner-join/
    **/
    { SELECT t1.columnIDtable1, t3.column3, t1.column2, t1.column3, t3.column6
        FROM tabla1 AS t1
        INNER JOIN tabla2 AS t2 ON t1.columnIDtable1 = t2.columnIDtable2
        INNER JOIN tabla3 AS t3 ON t1.column1 = t3.column3 }
LEFT JOIN
    /** Hace un merge con las filas que coinciden en ambas tablas más todas la de la izquierda (la primer tabla declarada).
        Esto es, si hay valores a la izquierda que no tienen valor correspondiente a la derecha, devuelve null para la columna perteneciente a la derecha.
        En un digrama de Venn donde cada grupo contiene las filas, sería el el grupo izquierdo completo.
    Para más info: https://www.sqltutorial.org/sql-left-join/
    **/
RIGHT JOIN
    /** Hace un merge con las filas que coinciden en ambas tablas más todas la de la derecha (la segunda tabla declarada)
        En un digrama de Venn donde cada grupo contiene las filas, sería el el grupo derecho completo.
    Para más info: https://www.sqltutorial.org/sql-right-join/
    **/
    { SELECT t1.columnIDtable1, t3.column3, t1.column2, t1.column3, t3.column6
        FROM tabla1 AS t1
        LEFT JOIN tabla2 AS t2 ON t1.columnIDtable1 = t2.columnIDtable2
        RIGHT JOIN tabla3 AS t3 ON t1.column1 = t3.column3 }
    /** En este caso,
    tabla1 es la tabla izquierda del primer join: tabla1 izq|der tabla2, luego
    el join resultante es la tabla izquierda del segundo join: (tabla1 LEFT JOIN tabla2) izq|der tabla3
    **/
FULL OUTER JOIN -- también puede escribisrse FULL JOIN
    /** Mantiene los valores que no tienen su correspondiente para ambas tablas
    Técnicamente, es como una combinación de LEFT JOIN y RIGHT JOIN
    **/
CROSS JOIN -- Combina todas las filas de la Tabla1 con todas las filas de la Tabla2
    { SELECT Columnas FROM Table1 CROSS JOIN Table2 }
    /** No llava condición. La unión resultante es un Producto Cartesiano
    **/
UNION   { SELECT column1, column2 FROM table1 UNION SELECT column3, column4 FROM table2; }
    UNION ALL
    /** Combina las columnas de ambas tablas
    UNION Combina valores únicos
    UNION ALL Combina todos los valores
    Consideraciones: https://www.sqltutorial.org/sql-union/
    Same number of columns. Compatible data types. Column names. Execution order.
    **/
INTERSECT { SELECT column1, column2 FROM table1 INTERSECT SELECT column3, column4 FROM table2; }
    /** Similar a UNION, cambina las tablas pero
    devuelve solamente las filas que coinciden en ambas tablas
    **/