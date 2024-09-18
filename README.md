# ANTIQUE

TERCER DÍA PUSH UP

###### **En la carpeta Images se encuentran el modelo conceptual y el relacional.**



#### CONSULTAS



**Consulta para listar todas las antigüedades disponibles para la venta:**

Obtén una lista de todas las piezas antiguas que están actualmente disponibles para la
venta, incluyendo el nombre de la pieza, su categoría, precio y estado de conservación.

```sql
SELECT a.nombre,c.nombre,a.precio,e.nombre
FROM antiguedad AS a
INNER JOIN categoria AS c ON a.id_categoria = c.id_categoria 
INNER JOIN estado AS e ON a.id_estado = e.id_estado;

+-------------------+----------+--------+------------+
| nombre            | nombre   | precio | nombre     |
+-------------------+----------+--------+------------+
| Loba Luperca      | rey      |   8.25 | restaurado |
| Venus de Milo     | mueble   |   12.5 | nuevo      |
| Cabeza de Ramsés  | guerrero |  15.75 | restaurado |
+-------------------+----------+--------+------------+
3 rows in set (0,00 sec)

```



**Consulta para buscar antigüedades por categoría y rango de precio:**
"Busca todas las antigüedades dentro de una categoría específica (por ejemplo, 'Muebles')
que tengan un precio dentro de un rango determinado (por ejemplo, entre 500 y 2000
dólares)."

```sql
SELECT a.nombre,c.nombre,a.precio
FROM antiguedad as a
INNER JOIN categoria AS c ON a.id_categoria = c.id_categoria
WHERE a.precio BETWEEN 200 AND 500;

+------------------+---------+--------+
| nombre           | nombre  | precio |
+------------------+---------+--------+
| Cabeza de Osiris | muebles |    400 |
+------------------+---------+--------+
1 row in set (0,00 sec)
```



**Consulta para mostrar el historial de ventas de un cliente específico:**
"Muestra todas las piezas antiguas que un cliente específico ha vendido, incluyendo la fecha
de la venta, el precio de venta y el comprador."

```sql

```



**Consulta para obtener el total de ventas realizadas en un periodo de tiempo:**
"Calcula el total de ventas realizadas en un período específico, por ejemplo, durante el último
mes."

```sql

```



**Consulta para encontrar los clientes más activos (con más compras realizadas):**
"Identifica los clientes que han realizado la mayor cantidad de compras en la plataforma."

```sql

```



**Consulta para listar las antigüedades más populares por número de visitas o consultas:**
"Muestra las piezas antiguas que han recibido la mayor cantidad de visitas o consultas por
parte de los usuarios.

```sql

```



**Consulta para listar las antigüedades vendidas en un rango de fechas específico:**
"Obtén una lista de todas las piezas antiguas que se han vendido dentro de un rango de
fechas específico, incluyendo la información del vendedor y comprador."

```sql

```



**Consulta para obtener un informe de inventario actual:**
"Genera un informe del inventario actual de antigüedades disponibles para la venta,
mostrando la cantidad de artículos por categoría."

```sql

```

