## **TobbacoNstuff DB**

Este proyecto ficticio de una base de datos sobre una distribuidora de productos del tabaco. El codigo sql tiene por fin:

*   Generar mediante DDL las tablas necesarias para estructurar un modelo relacional en torno a las ventas ficticias de esta distribuidora
*   Establecer como la tabla de echos la tabla de vents ("sales") y las demas tablas que la dimensionan en un formato “snowflake”
*   Realizar la insercion de datos a travez de 500 sentencias “INSERT” generadas a traves de python de forma aleatoria
*   Generar 5 views que contengan distintos informes utiles para la organización
*   Generar 2 funciones para genera calculos con los parametros de la DB
*   Generar 2 store procedures para hacer registros en last tablas la DB
*   Generar 3 triggers con 3 tablas de auditoria
*   Generar 2 tablas transaccionales conjuntamente con 2 store procedures para interactuar con last mismas 

---

### Organizacion de la informacion

Para comprender adecuadamente el proyecto se debe leer la documental PDF que esta adjunta al repositorio comentando lo arriba descripto en detalle.

En orden se deb correr los scripts:

1.  Create\_tobbacoNstuff.sql
2.  Insert\_tobbacoNstuff.sql
3.  View\_tobbacoNstuff.sql
4.  Functions\_tobbacoNstuff.sql
5.  StoredProcedure\_tobbacoNstuff.sql
6.  tobbacoNstuff\_triggers.sql
7.  Tobbaconstuff\_TCL.sql

_Opcional: Tobbaconstuff\_DCL.sql_

> Tambien se puede correr todo el codigo compilado en ScriptUnificado\_TobbacoNstuff.sql

---

### En el PDF se adjunta:

*   Introducción
*   Objetivo
*   Situación problemática
*   Modelo de negocio
*   Diagrama de entidad relación
*   Listado de tablas con descripción de estructura (columna, descripción, tipo de datos, tipo de clave)
*   Informes generados en base a la información de la base,
*   Herramientas y tecnologías usadas,
*   Futuras líneas.
