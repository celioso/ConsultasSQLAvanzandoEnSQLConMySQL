SELECT ESTADO, LIMITE_DE_CREDITO FROM tabla_de_clientes;

SELECT ESTADO, sum(LIMITE_DE_CREDITO) AS LIMITE_TOTAL 
FROM tabla_de_clientes GROUP BY ESTADO;

SELECT ENVASE, PRECIO_DE_LISTA FROM tabla_de_productos;

SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS MAYOR_PRECIO 
FROM tabla_de_productos GROUP BY ENVASE;

SELECT ENVASE, COUNT(*) FROM tabla_de_productos 
GROUP BY ENVASE;

SELECT BARRIO, SUM(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes GROUP BY BARRIO;

SELECT  CIUDAD, BARRIO, SUM(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes  WHERE CIUDAD = "CIUDAD DE MÉXICO" 
GROUP BY BARRIO;

SELECT  CIUDAD, BARRIO, SUM(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes  WHERE CIUDAD = "GUADALAJARA" 
GROUP BY BARRIO;

SELECT  CIUDAD, BARRIO, MAX(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes  WHERE CIUDAD = "CIUDAD DE MÉXICO" 
GROUP BY BARRIO;

SELECT  CIUDAD, BARRIO, MAX(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes GROUP BY ESTADO, BARRIO;

SELECT  ESTADO, BARRIO, MAX(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes GROUP BY ESTADO, BARRIO;

SELECT  ESTADO, BARRIO, MAX(LIMITE_DE_CREDITO) AS LIMITE, EDAD 
FROM tabla_de_clientes 
WHERE EDAD >= 20
GROUP BY ESTADO, BARRIO
ORDER BY EDAD DESC;

SELECT MAX(CANTIDAD) AS CANTIDAD_MAXIMA FROM items_facturas 
WHERE CODIGO_DEL_PRODUCTO = "1101035";

SELECT COUNT(*) FROM items_facturas 
WHERE CODIGO_DEL_PRODUCTO = "1101035" AND CANTIDAD = 99;