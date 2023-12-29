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