# Consultas SQL: Avanzando en SQL con MySQL

### Preparando el ambiente

Aquí puedes descargar los archivos que necesitarás para iniciar con tu entrenamiento.

[Descargue los archivos en Github](https://github.com/ahcamachod/1827-consultas-sql-avanzando-en-sql-con-my-sql "Descargue los archivos en Github") o haga clic [aquí](https://github.com/ahcamachod/1827-consultas-sql-avanzando-en-sql-con-my-sql/archive/refs/heads/main.zip "aquí") para descargarlos directamente.

### Haga lo que hicimos en aula

Llegó la hora de que sigas todos los pasos realizados por mí durante esta aula. En caso de que ya lo hayas hecho, excelente. Si aún no lo hiciste, es importante que ejecutes lo que fue visto en los videos para poder continuar con la siguiente aula.

1. Instala MySQL, conforme al video Instalando **MySQL Server**, del aula 1 del curso de **Introducción a SQL con MySQL**.

2. Abre MySQL Workbench. Utiliza la conexión LOCALHOST.

3. Haz clic con el Botón derecho del mouse sobre la lista de las bases de datos y escoge `Create Schema...`

4. Digita el nombre jugos_ventas. Haz clic en `Apply` dos veces.

5. Haz Download del archivo RecuperacionAmbiente.zip.

6. Descompacta el archivo.

7. Selecciona la pestaña **Administration** en el área **Navigator**.

8. Selecciona el link **Data Import/Restore**.

9. En la opción `Import From Dump Project Folder` escoge el directorio DumpJugosVentas.

10. Selecciona `Start Import`.

11. Verifica en la base de datos **jugos_ventas** si las tablas fueron creadas.

12. Existe otra manera de importar los archivos (**Solo en caso de que el método anterior no funcione**). Basta ejecutar todos los archivos `.sql` compactados en el archivo **RecuperacionAmbiente.zip** y listo.

### Lo que aprendimos

Lo que aprendimos en esta aula:

- A recuperar el ambiente;
- Un poco sobre la historia de SQL;
- Un poco sobre la historia de MYSQL.

### Proyecto del aula anterior

¿Comenzando en esta etapa? Aquí puedes descargar los archivos del proyecto que hemos avanzado hasta el aula anterior.

[Descargue los archivos en Github](https://github.com/ahcamachod/1827-consultas-sql-avanzando-en-sql-con-my-sql/tree/aula-2 "Descargue los archivos en Github") o haga clic [aquí](https://github.com/ahcamachod/1827-consultas-sql-avanzando-en-sql-con-my-sql/archive/refs/heads/aula-2.zip "aquí") para descargarlos directamente.

### Resuelve la estructura lógica

```sql
(NOT ((3 > 2) OR (4 >= 5)) AND (5 > 4) ) OR (9 > 0)
```

```sql
(NOT ((3 > 2) OR (4 >= 5)) AND (5 > 4) ) OR (9 > 0)
(NOT ((Verdadero) OR (Falso)) AND (Verdadero) ) OR (Verdadero)
(NOT (Verdadero) AND (Verdadero) ) OR (Verdadero)
(Falso AND Verdadero) OR (Verdadero)
(Falso) OR (Verdadero)
Verdadero
```

### Buscando clientes

¿Cuántos clientes tienen apellidos que acaban con “ez”?

Son 6. La consulta que debemos realizar es la siguiente:

```sql
SELECT * FROM tabla_de_clientes WHERE NOMBRE LIKE '%ez';
```

### Haga lo que hicimos en aula

Llegó la hora de que sigas todos los pasos realizados por mí durante esta aula. En caso de que ya lo hayas hecho, excelente. Si aún no lo hiciste, es importante que ejecutes lo que fue visto en los videos para poder continuar con la siguiente aula.

1. Para que las consultas en la base de datos puedan ser efectuadas, es preciso conocer sus tablas y sus relaciones. Para ello, dirígete a Workbench y verifica si la base de datos **jugos_ventas** está disponible.

2. Expandiendo el árbol de estructura de base de datos sobre **jugos_ventas**, podemos ver los componentes de una base de datos. Para las consultas, uno de los elementos más importantes son las tablas que pueden ser vistas en mayor detalle hasta su estructura de campos.

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/02/1.png)

3. Dirígete al menú y selecciona `Database / Reverse Engineer`.

4. Haz Clic en **Next** dos veces y después escoge la base en la cual la ingeniería reversa será efectuada.

5. Continúa en el asistente confirmando las selecciones por defecto hasta el final.

6. Podrás ver un esquema visual de las tablas. Este esquema puede servir como una guía para tus consultas.

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/02/2.png)

7. Conociendo cómo es nuestra base, podemos hacer nuestras consultas. Selecciona un nuevo script de SQL, con la base de datos seleccionada, y digita:

```sql
USE jugos_ventas;

SELECT DNI, NOMBRE, DIRECCION_1, DIRECCION_2, BARRIO, CIUDAD, ESTADO, 
CP, FECHA_DE_NACIMIENTO, EDAD, SEXO, LIMITE_DE_CREDITO, VOLUMEN_DE_COMPRA,
PRIMERA_COMPRA FROM tabla_de_clientes;
```

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/02/3.png)

Aquí veremos todos los campos de la tabla **tabla_de_clientes**. Esto porque los campos fueron seleccionados uno a uno.

8. Digita a continuación:

````sql
SELECT * FROM tabla_de_clientes;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/02/4.png)

Ahora podemos ver que no es necesario seleccionar todos los campos de una tabla. Basta destacar los campos que serán vistos.

10. Digita:

```sql
SELECT DNI AS IDENTIFICACION, NOMBRE AS CLIENTE FROM tabla_de_clientes;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/02/5.png)

No siempre el nombre original de la columna es el nombre que queremos que sea retornado por la consulta. Por ello, podemos crear Alias (Sobrenombres) para los campos escribiendo algo después del comando AS.

11. Podemos filtrar nuestra consulta. Digita:

```sql
SELECT * FROM tabla_de_productos WHERE  SABOR = 'Uva';
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/02/6.png)

```sql
SELECT * FROM tabla_de_productos WHERE  SABOR = 'Mango';
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/02/7.png)

```sql
SELECT * FROM tabla_de_productos WHERE  ENVASE = 'Botella PET';
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/02/8.png)

El resultado es el mismo si se escribe en mayúscula o en minúscula ya que MySQL no es *case sensitive*:

```sql
SELECT * FROM tabla_de_productos WHERE  ENVASE = 'botella pet';
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/02/8.png)

Los filtros usados retornan todos los registros de la tabla donde se cumple lo especificado por la cláusula WHERE. Podemos usar cualquier columna como criterio.

12. Existen comandos de filtro aplicados a valores:

```sql
SELECT * FROM tabla_de_productos WHERE PRECIO_DE_LISTA > 16;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/02/9.png)

```sql
SELECT * FROM tabla_de_productos WHERE PRECIO_DE_LISTA BETWEEN 16 AND 16.02;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/02/10.png)

En este caso podemos usar >, >=, <, <=, =, <> y BETWEEN. Así, podemos aplicar filtros sobre los valores para obtener diversos resultados.

13. Es posible aplicar consultas condicionales usando los operadores AND y OR. El output va a depender del significado de AND y OR en una estructura lógica. Digita:

```sql
SELECT * FROM tabla_de_productos WHERE SABOR='mango' AND TAMANO='470 ml';
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/02/11.png)

A causa del operador AND, el *output* solamente ocurrirá cuando las dos condiciones se cumplan en el mismo registro de la tabla.

14. Digita:

```sql
SELECT * FROM tabla_de_productos WHERE SABOR='mango' OR TAMANO='470 ml';
```

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/02/12.png)

Aquí obtuvimos un filtro (Sabor = Mango) u otro ( Tamaño = 470 ml). Esto porque usamos el operador OR.

15. Podemos usar parte de un texto para ser empleado como criterio de localización de registros de la tabla. Digita a continuación:

```sql
SELECT * FROM tabla_de_productos WHERE SABOR LIKE '%manzana';
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/02/13.png)

Aquí buscaremos todos los registros cuyo sabor contenga la palabra Manzana, pero solamente al final del texto, ya que el signo `%` precede el texto Manzana.

16. Podemos mezclar condiciones LIKE con otras. Digita:

```sql
SELECT * FROM tabla_de_productos WHERE SABOR LIKE '%manzana'
AND ENVASE = 'Botella PET';
```

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/02/14.png)

Finalmente, obtuvimos el resultado de la consulta del texto “Manzana” tan solo para envases de tipo “Botella PET”.

### Lo que aprendimos

Lo que aprendimos en esta aula:

- La importancia de conocer la base de datos antes de realizar las consultas;
- El comando de consultas y cómo podemos crear filtros;
- A mezclar filtros condicionales con AND y OR;
- A utilizar `>`, `>=`, `<`, `<=`, `=` ou `<>` en los filtros que implican valores;
- El funcionamiento del comando LIKE.

### Proyecto del aula anterior

¿Comenzando en esta etapa? Aquí puedes descargar los archivos del proyecto que hemos avanzado hasta el aula anterior.

[Descargue los archivos en Github](https://github.com/ahcamachod/1827-consultas-sql-avanzando-en-sql-con-my-sql/tree/aula-3 "Descargue los archivos en Github") o haga clic ![](https://github.com/ahcamachod/1827-consultas-sql-avanzando-en-sql-con-my-sql/archive/refs/heads/aula-3.zip) para descargarlos directamente.

### Barrios de Ciudad de México

¿Cuáles son los barrios en Ciudad de México que tienen clientes?

Son 10. La consulta que debemos realizar es la siguiente:

```sql
SELECT DISTINCT BARRIO FROM tabla_de_clientes WHERE CIUDAD = 'Ciudad de México';
```

### Observando una muestra de datos

Queremos obtener las 10 primeras ventas del día 01/01/2017. ¿Cuál sería el comando SQL para obtener este resultado?

La consulta que debemos realizar es la siguiente:

```sql
SELECT * FROM facturas  WHERE FECHA_VENTA = '2017-01-01' LIMIT 10;
```

### Mayores ventas

¿Cuál (o cuáles) fue (fueron) la(s) mayor(es) venta(s) del producto “Refrescante, 1 Litro, Frutilla/Limón”, en cantidad? (Obtenga este resultado utilizando 2 comandos SQL).

Las consultas que debemos realizar son las siguientes:

```sql
SELECT CODIGO_DEL_PRODUCTO FROM tabla_de_productos 
WHERE NOMBRE_DEL_PRODUCTO = "Refrescante" AND TAMANO = "1 Litro" 
AND SABOR = "Frutilla/Limón"; 
```

Ahora, con el código del producto que es: 1101035, podemos consultar la cantidad:

```sql
SELECT * FROM items_facturas WHERE CODIGO_DEL_PRODUCTO = "1101035" ORDER BY CANTIDAD DESC;
```

Notaremos que la cantidad máxima vendida es de 99.

### Número de ventas

Aprovechando el ejercicio del video anterior ¿Cuántos ítems vendidos cuentan con la mayor cantidad del producto '1101035'?

Las consultas que debemos realizar son las siguientes:

```SQL
SELECT MAX(CANTIDAD) AS CANTIDAD_MAXIMA FROM items_facturas WHERE CODIGO_DEL_PRODUCTO = "1101035";
```
Notaremos que la cantidad máxima vendida es de 99. Así, podemos entonces ejecutar el siguiente comando:

```SQL
SELECT COUNT(*) FROM items_facturas WHERE CODIGO_DEL_PRODUCTO = "1101035" AND CANTIDAD = 99;
```

Notaremos que la cantidad de ítems vendida es de 79

### Clientes que realizaron compras en 2016

¿Quiénes fueron los clientes que realizaron más de 2000 compras en 2016?

La consulta que debemos realizar es la siguiente:

```sql
SELECT DNI, COUNT(*) FROM facturas
WHERE YEAR(FECHA_VENTA) = 2016
GROUP BY DNI
HAVING COUNT(*) > 2000;
```

Nos devolverá 3 clientes.

### Clasificando el número de ventas

Registre el año de nacimiento de los clientes y clasifíquelos de la siguiente manera:

Nacidos antes de 1990= Viejos, nacidos entre 1990 y 1995= Jóvenes y nacidos después de 1995= Niños. Liste el nombre del cliente y esta clasificación.

El comando que debemos ejecutar es el siguiente:

```sql
SELECT NOMBRE,
CASE 
    WHEN YEAR(fecha_de_nacimiento) < 1990 THEN 'Viejos'
    WHEN YEAR(fecha_de_nacimiento) >= 1990 
    AND YEAR(fecha_de_nacimiento) <= 1995 THEN 'Jóvenes' 
    ELSE 'Niños' 
END AS CLASIFICACION_EDAD
FROM tabla_de_clientes;
```

### Haga lo que hicimos en aula

Llegó la hora de que sigas todos los pasos realizados por mí durante esta aula. En caso de que ya lo hayas hecho, excelente. Si aún no lo hiciste, es importante que ejecutes lo que fue visto en los videos para poder continuar con la siguiente aula.

1. De nuevo en Workbench, vamos a ver formas diferentes de exhibir los resultados. Digita:

```sql
SELECT ENVASE, TAMANO FROM tabla_de_productos;
```

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/15.png)

Observa que tenemos registros donde el conjunto ENVASE / TAMAÑO se repite.

2. Ahora digita el comando:

```sql
SELECT DISTINCT ENVASE, TAMANO FROM tabla_de_productos;
```

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/16.png)

El simple hecho de incluir la cláusula DISTINCT hace que los registros no se repitan.

3. Podemos aplicar filtros a la selección con DISTINCT e incluso añadir más campos.

```sql
SELECT DISTINCT ENVASE, TAMANO, SABOR FROM tabla_de_productos
WHERE SABOR = 'Naranja';
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/17.png)

4. Podemos limitar el número de registros exibidos en el *output*. Digita:

```sql
SELECT * FROM tabla_de_productos LIMIT 5;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/18.png)

El *output* está limitado a los primeros 5 registros.

5. Podemos exhibir los registros dentro de un intervalo de filas. Digita:

```sql
SELECT * FROM tabla_de_productos LIMIT 5,4;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/19.png)

6. El output de un comando SELECT puede ser presentado de forma ordenada. Observa:

```sql
SELECT * FROM tabla_de_productos ORDER BY PRECIO_DE_LISTA;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/20.png)

Tenemos los valores ordenados por precio de lista, de menor a mayor.

7. Podemos cambiar este orden. Digita:

```sql
SELECT * FROM tabla_de_productos ORDER BY PRECIO_DE_LISTA DESC;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/21.png)

8. Los valores pueden ser ordenados alfabéticamente cuando incluimos un campo de texto en el criterio de ordenamiento. Digita:

```sql
SELECT * FROM tabla_de_productos ORDER BY NOMBRE_DEL_PRODUCTO;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/22.png)

9. También, en el criterio de ordenamiento del tipo texto, podemos cambiar el orden de mayor a menor. Digita:

```sql
SELECT * FROM tabla_de_productos ORDER BY NOMBRE_DEL_PRODUCTO DESC;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/23.png)

10. El criterio de ordenamiento puede ser diferente para cada tipo. Observa el ejemplo a continuación donde usamos dos campos como criterio de ordenamiento y un orden diferente para cada uno de ellos:

```sql
SELECT * FROM tabla_de_productos ORDER BY ENVASE DESC, NOMBRE_DEL_PRODUCTO ASC;
```

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/24.png)

11. Los datos pueden ser agrupados. Cuando esto sucede, tenemos que aplicar um criterio de agrupamiento para los campos numéricos. Podemos emplear SUM, AVG, MAX, MIN, entre otros. Digita el comando siguiente:

```sql
SELECT ESTADO, LIMITE_DE_CREDITO FROM tabla_de_clientes;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/25.png)

Puedes notar que tenemos varias líneas para EM y JC. ¿Cómo hacemos para sumar todos los límites de crédito para EM y JC?

12. La solución está en el siguiente comando:

```sql
SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM tabla_de_clientes GROUP BY ESTADO;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/26.png)

13. Podemos emplear otros criterios como el valor máximo.

```sql
SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS MAYOR_PRECIO 
FROM tabla_de_productos GROUP BY ENVASE;
```

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/27.png)

Aquí vemos el mayor precio de lista para cada tipo de envase.

14. El comando COUNT cuenta el número de ocurrencias en la tabla. Digita:

```sql
SELECT ENVASE, COUNT(*) FROM tabla_de_productos 
GROUP BY ENVASE;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/28.png)

Tenemos el número de productos cuyo envase es botella PET, botella de vidrio y Lata.

15. El filtro puede ser aplicado sobre el agrupamiento, como una consulta cualquiera. Digita: 

```sql
SELECT BARRIO, SUM(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes GROUP BY BARRIO;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/29.png)

16. Adicionalmente, el agrupamiento puede ser realizado en más de un campo. Digita:

```sql
SELECT ESTADO, BARRIO, MAX(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes GROUP BY ESTADO, BARRIO;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/30.png)

17.Podemos mezclar agrupamiento com ordenamiento. Digita:

```sql
SELECT ESTADO, BARRIO, MAX(LIMITE_DE_CREDITO) AS LIMITE,
EDAD FROM tabla_de_clientes 
WHERE EDAD >=20
GROUP BY ESTADO, BARRIO
ORDER BY EDAD;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/31.png)

18. Observa la consulta a continuación:

```sql
SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM tabla_de_clientes GROUP BY ESTADO;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/32.png)

19. Queremos aplicar un filtro sobre el resultado de esta consulta. Entonces, digita:

```sql
SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM tabla_de_clientes WHERE LIMITE_TOTAL > 300000
GROUP BY ESTADO;
```
Nota que la consulta anterior generó un error.

20. Usamos el comando HAVING para filtrar el *output* de una consulta usando como criterio el valor agrupado. Digita:

```sql
SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM tabla_de_clientes 
GROUP BY ESTADO
HAVING LIMITE_TOTAL > 300000;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/33.png)

21. El criterio usado con el comando HAVING no necesita ser el mismo usado en el filtro. Observa el siguiente comando:

```sql
SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO,
MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO 
FROM tabla_de_productos GROUP BY ENVASE;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/34.png)

Utiliza el MIN para agrupamiento.

22) Pero, en la siguiente consulta, el criterio del comando HAVING pide la suma. Digita:

```sql
SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO,
MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO 
FROM tabla_de_productos GROUP BY ENVASE;
```

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/35.png)

23. Al utilizar HAVING podemos usar más de un criterio empleando AND u OR.
```sql
SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO,
MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO,
SUM(PRECIO_DE_LISTA) AS SUMA_PRECIO
FROM tabla_de_productos GROUP BY ENVASE
HAVING SUM(PRECIO_DE_LISTA) >= 80 
AND MAX(PRECIO_DE_LISTA) >= 5;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/36.png)

24. El comando CASE permite la clasificación de cada registro de la tabla. Digita el comando siguiente:

```sql
SELECT NOMBRE_DEL_PRODUCTO, PRECIO_DE_LISTA,
CASE
   WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
   WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Asequible'
   ELSE 'Barato'
END AS PRECIO
FROM tabla_de_productos;
```

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/37.png)

Con CASE fue posible clasificar los productos como Costoso, Barato o Asequible conforme al valor de su precio de lista.

25. Podemos usar el comando CASE como criterio de agrupamiento, Digita el siguiente comando:

```sql
SELECT ENVASE, SABOR,
CASE
   WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
   WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Asequible'
   ELSE 'Barato'
END AS PRECIO, MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO
FROM tabla_de_productos
WHERE TAMANO = '700 ml'
GROUP BY ENVASE,
CASE
   WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
   WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Asequible'
   ELSE 'Barato'
END
ORDER BY ENVASE;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/03/38.png)

### Lo que aprendimos

Lo que aprendimos en esta aula:

- A presentar solamente filas distintas en una selección;
- A ordenar la salida de la selección;
- A agrupar los registros por un conjunto de campos y aplicando un criterio de agrupamiento sobre los campos numéricos (SUM, MIN, MAX, AVG, etc);
- A utilizar el comando HAVING para aplicar un filtro utilizando los campos numéricos agrupados como condición;
- A limitar la salida de las consultas;
- A usar el comando CASE para clasificar un determinado campo por un criterio.

### Proyecto del aula anterior

¿Comenzando en esta etapa? Aquí puedes descargar los archivos del proyecto que hemos avanzado hasta el aula anterior.

[Descargue los archivos en Github](https://github.com/ahcamachod/1827-consultas-sql-avanzando-en-sql-con-my-sql/tree/aula-4 "Descargue los archivos en Github") o haga clic [aquí](https://github.com/ahcamachod/1827-consultas-sql-avanzando-en-sql-con-my-sql/archive/refs/heads/aula-4.zip "aquí") para descargarlos directamente.

### Obteniendo la facturación anual

Obtén la facturación anual de la empresa. Ten en cuenta que el valor financiero de las ventas consiste en multiplicar la cantidad por el precio.

El comando que debemos ejecutar es el siguiente:

````sql
SELECT YEAR(FECHA_VENTA), SUM(CANTIDAD * PRECIO) AS FACTURACION
FROM facturas F 
INNER JOIN 
items_facturas IFa 
ON F.NUMERO = IFa.NUMERO
GROUP BY YEAR(FECHA_VENTA);
```

### Relación entre HAVING y Subconsulta

Cuál sería la consulta utilizando la subconsulta que sería equivalente a:

```sql
SELECT DNI, COUNT(*) FROM facturas
WHERE YEAR(FECHA_VENTA) = 2016
GROUP BY DNI
HAVING COUNT(*) > 2000;
```
El comando que debemos ejecutar es el siguiente:

```sql
SELECT X.DNI, X.CONTADOR FROM 
(SELECT DNI, COUNT(*) AS CONTADOR FROM facturas
WHERE YEAR(FECHA_VENTA) = 2016
GROUP BY DNI) X WHERE X.CONTADOR > 2000;
```

### Haga lo que hicimos en aula

Llegó la hora de que sigas todos los pasos realizados por mí durante esta aula. En caso de que ya lo hayas hecho, excelente. Si aún no lo hiciste, es importante que ejecutes lo que fue visto en los videos para poder continuar con la siguiente aula.

1. Aquí veremos cómo conectar las consultas de tablas diferentes. Esta unión se conoce como JOIN.

2. Observa el contenido de dos tablas digitando los siguientes comandos:

```sql
SELECT * FROM tabla_de_vendedores;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/39.png)
```sql
SELECT * FROM facturas;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/40.png)

3. Podemos conectar estas dos tablas por un campo en común (MATRICULA). Digita:

```sql
SELECT * FROM tabla_de_vendedores A
INNER JOIN
facturas B
ON A.MATRICULA = B.MATRICULA;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/41.png)

4. Podemos aplicar agrupamientos al resultado de la consulta que conecta una o más tablas:

```sql
SELECT A.NOMBRE, B.MATRICULA, COUNT(*) FROM tabla_de_vendedores A
INNER JOIN
facturas B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.NOMBRE, B.MATRICULA;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/42.png)

5. No siempre todos los registros pueden ser conectados. Existen otros tipos de JOIN que nos permiten identificar lo que no puede ser conectado. Observa la siguiente consulta:

```sql
SELECT count(*) FROM tabla_de_clientes;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/43.png)

Ella muestra que tenemos 15 clientes.

6. Vamos a realizar un JOIN con la tabla de facturas para ver cuántos clientes poseen facturas emitidas. Digita:

```sql
SELECT DISTINCT A.DNI, A.NOMBRE, B.DNI FROM tabla_de_clientes A
INNER JOIN
facturas B
ON A.DNI = B.DNI;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/44.png)

Si cuentas a los clientes verás que, en la consulta acima, tenemos 12 registros. Existen tres clientes que están registrados pero nunca se les emitió facturas.

7. Podemos usar un LEFT JOIN. Digita:

```sql
SELECT DISTINCT A.DNI, A.NOMBRE, A.CIUDAD, B.DNI FROM tabla_de_clientes A
LEFT JOIN
facturas B
ON A.DNI = B.DNI;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/45.png)

El cliente que posee el DNI proveniente de la tabla de facturas con el valor nulo, es el cliente a quien nunca se le emitió facturas.

8. La selección correcta sería:

```sql
SELECT DISTINCT A.DNI, A.NOMBRE, A.CIUDAD, B.DNI FROM tabla_de_clientes A
LEFT JOIN
facturas B
ON A.DNI = B.DNI
WHERE B.DNI IS NULL;
```

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/46.png)

9. Podemos juntar dos o más consultas, Desde que los campos seleccionados sean los mismos. Digita: 

```sql
SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;
```

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/47.png)

10. El comando UNION ALL no realiza la selección con un DISTINCT. Los registros se repiten si existen en ambas tablas. Digita:

```sql
SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION ALL
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;
```
![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/48.png)

Observa que Del Valle aparece dos veces, al igual que Condesa, Contadero y Oblatos. Una proveniente de la tabla de clientes y la otra proveniente de la tabla de productos.

11. Podemos simular el FULL JOIN, que no es soportado por MySQL, usando el LEFT JOIN y el RIGHT JOIN con UNION. Digita:

```sql
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes
LEFT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO
UNION
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes
RIGHT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;
```

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/49.png)

12. Las subconsultas permiten realizar selecciones usando como criterios otras selecciones. Digita:

```sql
SELECT * FROM tabla_de_clientes
WHERE BARRIO IN (SELECT DISTINCT BARRIO FROM tabla_de_vendedores);
```

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/50.png)

13. Podemos aplicar una consulta sobre otra consulta directamente. Digita:

```sql
SELECT X.ENVASE, X.PRECIO_MAXIMO FROM
(SELECT ENVASE, MAX(PRECIO_DE_LISTA) 
AS PRECIO_MAXIMO FROM tabla_de_productos GROUP BY ENVASE) X
WHERE X.PRECIO_MAXIMO >=10;
```

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/51.png)

14. Podemos transformar una consulta en una vista (View) que después puede ser usada en otras consultas como una tabla. Crea la vista. Para ello, expande el árbol de la esquina superior izquierda, donde tenemos el nombre de la base, y vaya a `Views`.

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/52.png)

15. Haz clic con el botón derecho del mouse y selecciona la opción `Create View…`.

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/53.png)

16. Digita el siguiente comando:

```sql
CREATE VIEW ‘vw_envases_grandes’
AS SELECT ENVASE, MAX(PRECIO_DE_LISTA) 
AS PRECIO_MAXIMO FROM tabla_de_productos GROUP BY ENVASE;
```

17. Haz clic en Apply y sigue los pasos hasta crear la vista.

18. Podemos manipular la vista como una tabla. Digita:

```sql
SELECT X.ENVASE, X. PRECIO_MAXIMO FROM
vw_envases_grandes X 
WHERE PRECIO_MAXIMO >=10;
```

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/54.png)

19. Podemos crear JOINs de tablas con views:

```sql
SELECT A.NOMBRE_DEL_PRODUCTO, A.ENVASE, A.PRECIO_DE_LISTA, 
B.PRECIO_MAXIMO FROM tabla_de_productos A
INNER JOIN
vw_envases_grandes B
ON A.ENVASE = B.ENVASE;
```

![](https://caelum-online-public.s3.amazonaws.com/1827-design-portifolio/04/55.png)


### Lo que aprendimos

Lo que aprendimos en esta aula:

- A conectar dos o más tablas a través de comandos de JOIN;
- Los tipos de JOIN existentes y cuáles son soportados por MySQL;
- Los comandos UNION y UNION ALL, para unir dos o más selecciones siempre y cuando tengan los mismos campos seleccionados;
- A utilizar una consulta como criterio de filtro de otra consulta;
- A utilizar una consulta dentro de otra consulta;
- A Crear y utilizar vistas (Views).

### Proyecto del aula anterior

¿Comenzando en esta etapa? Aquí puedes descargar los archivos del proyecto que hemos avanzado hasta el aula anterior.

[Descargue los archivos en Github](https://github.com/ahcamachod/1827-consultas-sql-avanzando-en-sql-con-my-sql/tree/aula-5 "Descargue los archivos en Github") o haga clic [aquí](https://github.com/ahcamachod/1827-consultas-sql-avanzando-en-sql-con-my-sql/archive/refs/heads/aula-5.zip "aquí") para descargarlos directamente.