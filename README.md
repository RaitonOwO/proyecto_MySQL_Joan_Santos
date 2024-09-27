# 🎮 Base de Datos de League of Legends 📊

Este proyecto consiste en una base de datos relacional que gestiona información sobre campeones, objetos, jugadores, partidas y más, relacionados con el videojuego **League of Legends**. La base de datos está diseñada en MySQL y contiene varias tablas interrelacionadas para almacenar datos importantes sobre el juego y su ecosistema.

## 📁 Estructura de la Base de Datos

La base de datos está compuesta por las siguientes tablas:

- **`regiones`**: Información sobre las diferentes regiones del juego.
- **`runas`**: Detalles de las runas disponibles.
- **`chromas`**: Chroma de las skins del juego.
- **`skins`**: Skins asociadas a los campeones.
- **`campeones`**: Información detallada de los campeones disponibles.
- **`roles`**: Los roles que los campeones pueden desempeñar.
- **`estadisticas en juego`**: Información sobre las estadísticas de un jugador durante una partida (muertes, asesinatos, asistencias, etc.).
- **`partidas`**: Registro de partidas jugadas con detalles de su duración, modo de juego, y fecha.
- **`equipos`**: Datos de los equipos que compiten.
- **`perfil jugadores`**: Información del perfil de un jugador (nivel, rango, etc.).
- **`jugadores`**: Registro de los jugadores y su asociación con partidas, campeones, y estadísticas.
- **`habilidades`**: Información sobre las habilidades de los campeones.
- **`objetos`**: Lista de objetos que los campeones pueden adquirir.
- **`hechizos de invocador`**: Hechizos que los campeones pueden usar.
- **`campeones_has_objetos`**: Relación entre campeones y los objetos que tienen.

## 🚀 Instalación y Configuración

1. **Instalar MySQL** en tu sistema.
2. Crear el esquema de la base de datos usando el siguiente comando:
    ```sql
    CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8;
    ```
3. Ejecutar el archivo SQL para crear todas las tablas de la base de datos.
4. Insertar los datos necesarios en las tablas correspondientes.

## 📝 Consultas SQL Documentadas

A continuación se presentan algunas consultas útiles que puedes realizar en esta base de datos, junto con su explicación:

### 1. 📋 Obtener todos los campeones y sus respectivas regiones.:
```sql
SELECT campeones.nombre AS campeon, regiones.nombre AS region
FROM campeones
JOIN regiones ON campeones.regiones_id_region = regiones.id_region;

```
### 2. 📋 Listar todos los objetos disponibles en el juego:
```sql
SELECT * FROM objetos;

```
### 3. 📋 Mostrar los jugadores junto con sus estadísticas en juego:
```sql
SELECT jugadores.id_jugador, estadisticas.asesinatos, estadisticas.muertes, estadisticas.asistencias
FROM jugadores
JOIN `estadisticas en juego` estadisticas ON jugadores.`estadisticas en juego_id_estadistica` = estadisticas.id_estadistica;

```
### 4. 📋 Obtener el historial de partidas de un jugador específico:
```sql
SELECT jugadores.id_jugador, partidas.id_partida, partidas.fecha, partidas.duracion, partidas.modo_juego
FROM jugadores
JOIN partidas ON jugadores.partidas_id_partida = partidas.id_partida
WHERE jugadores.id_jugador = 1;

```
### 5. 📋 Contar cuántos jugadores hay en cada rol:

```sql
SELECT roles.nombre AS rol, COUNT(jugadores.id_jugador) AS cantidad_jugadores
FROM jugadores
JOIN roles ON jugadores.roles_id_rol = roles.id_rol
GROUP BY roles.nombre;

```

### 6. 📋 Obtener los campeones que más aparecen en las partidas:

```sql
SELECT c.nombre AS Campeón, COUNT(j.campeones_id_campeon) AS Veces_usado
FROM jugadores j
JOIN campeones c ON j.campeones_id_campeon = c.id_campeon
GROUP BY c.nombre
ORDER BY Veces_usado DESC;

```
### 7. 📋 Encontrar la partida más larga registrada:
```sql
SELECT id_partida, duracion, modo_juego, fecha
FROM partidas
ORDER BY duracion DESC
LIMIT 1;

```
### 8. 📋 Ver los jugadores y sus KDA en la partida:
```sql
SELECT j.id_jugador, SUM(e.muertes) AS Total_muertes, SUM(e.asesinatos) AS Total_asesinatos, SUM(e.asistencias) AS Total_asistencias
FROM jugadores j
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
GROUP BY j.id_jugador;
```

### 9. 📋 Objetos más caros:
```sql
SELECT nombre, tipo, precio
FROM objetos
ORDER BY precio DESC
LIMIT 5;

```
### 10. 📋 Objetos más utilizados por un campeón específico:
```sql
SELECT o.nombre AS Objeto, COUNT(cho.objetos_id_objeto) AS Veces_usado
FROM campeones_has_objetos cho
JOIN objetos o ON cho.objetos_id_objeto = o.id_objeto
JOIN campeones c ON cho.campeones_id_campeon = c.id_campeon
WHERE c.nombre = 'Jhin' 
GROUP BY o.nombre
ORDER BY Veces_usado DESC;

```
### 11. 📋 Listar todos los objetos de defensa:
```sql
SELECT nombre FROM objetos WHERE tipo = 'Defensivo';

```
### 12. 📋 Ver el total de objetos por categoría:
```sql
SELECT tipo, COUNT(*) AS Total_Objetos FROM objetos GROUP BY tipo;

```

### 13. 📋 Objetos con precio mayor a 3000:
```sql
SELECT nombre, precio FROM objetos WHERE precio > 3000;

```
### 14. 📋 Objetos más baratos:
```sql
SELECT nombre, precio FROM objetos ORDER BY precio ASC LIMIT 5;

```
### 15. 📋 Contar cuántos objetos hay en total:
```sql
SELECT COUNT(*) AS Total_Objetos FROM objetos;

```
### 16. 📋 Promedio de precio de los objetos:
```sql
SELECT AVG(precio) AS Promedio_Precio FROM objetos;

```
### 17. 📋 Contar cuántos campeones hay en total:
```sql
SELECT COUNT(*) AS Total_Campeones FROM campeones;

```
### 18. 📋 Listar todos los jugadores registrados:
```sql
SELECT * FROM jugadores;

```
### 19. 📋 Jugador con más asesinatos totales:
```sql
SELECT j.id_jugador, SUM(e.asesinatos) AS Total_Asesinatos
FROM jugadores j
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
GROUP BY j.id_jugador
ORDER BY Total_Asesinatos DESC
LIMIT 1;

```
### 20. 📋 Promedio de asistencias por partida para un jugador específico:
```sql
SELECT AVG(e.asistencias) AS Promedio_Asistencias
FROM `estadisticas en juego` e
JOIN jugadores j ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
WHERE j.id_jugador = 1;

```
### 21. 📋 Jugador con mayor oro ganado en total:
```sql
SELECT j.id_jugador, SUM(e.oro_ganado) AS Total_Oro
FROM jugadores j
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
GROUP BY j.id_jugador
ORDER BY Total_Oro DESC
LIMIT 1;

```
### 22. 📋 Jugador con más muertes en una sola partida:
```sql
SELECT j.id_jugador, MAX(e.muertes) AS Máximas_Muertes
FROM jugadores j
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
GROUP BY j.id_jugador
ORDER BY Máximas_Muertes DESC
LIMIT 1;

```
### 23. 📋 Estadísticas de un jugador en todas las partidas:
```sql
SELECT j.id_jugador, e.asesinatos, e.muertes, e.asistencias, e.oro_ganado
FROM jugadores j
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
WHERE j.id_jugador = 1;

```
### 24. 📋 Promedio de muertes de un jugador en todas sus partidas:
```sql
SELECT AVG(e.muertes) AS Promedio_Muertes
FROM jugadores j
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
WHERE j.id_jugador = 1;

```
### 25. 📋 Total de asesinatos por rol:
```sql
SELECT r.nombre AS Rol, SUM(e.asesinatos) AS Total_Asesinatos
FROM roles r
JOIN campeones c ON r.id_rol = c.roles_id_rol
JOIN jugadores j ON c.id_campeon = j.campeones_id_campeon
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
GROUP BY r.nombre;

```
### 26. 📋 Obtener todas las partidas jugadas:
```sql
SELECT * FROM partidas;

```
### 27. 📋 Contar cuántas partidas hay en total:
```sql
SELECT COUNT(*) AS Total_Partidas FROM partidas;

```
### 28. 📋 Duración promedio de las partidas:
```sql
SELECT AVG(duracion) AS Promedio_Duración FROM partidas;

```
### 29. 📋 Partidas en modo "Ranked":
```sql
SELECT * FROM partidas WHERE modo_juego = 'Ranked';

```
### 30. 📋 Partida más reciente jugada:
```sql
SELECT * FROM partidas ORDER BY fecha DESC LIMIT 1;

```
### 31. 📋 Promedio de duración de partidas por modo de juego:
```sql
SELECT modo_juego, AVG(duracion) AS Promedio_Duración
FROM partidas
GROUP BY modo_juego;
```
### 32. 📋 Número de partidas por rol:
```sql
SELECT r.nombre AS Rol, COUNT(j.id_jugador) AS Número_Partidas
FROM roles r
JOIN jugadores j ON j.roles_id_rol = r.id_rol
GROUP BY r.nombre;

```
### 33. 📋 Jugador que más partidas ha jugado.:
```sql
SELECT j.id_jugador, COUNT(p.id_partida) AS Partidas_Jugadas
FROM jugadores j
JOIN partidas p ON j.partidas_id_partida = p.id_partida
GROUP BY j.id_jugador
ORDER BY Partidas_Jugadas DESC
LIMIT 1;
```
### 34. 📋 Listar los objetos más utilizados en las partidas de un jugador específico.:
```sql
SELECT o.nombre AS Objeto, COUNT(cho.objetos_id_objeto) AS Veces_usado
FROM campeones_has_objetos cho
JOIN objetos o ON cho.objetos_id_objeto = o.id_objeto
JOIN jugadores j ON cho.campeones_id_campeon = j.campeones_id_campeon
WHERE j.id_jugador = 1 -- Cambia '1' por el ID del jugador
GROUP BY o.nombre
ORDER BY Veces_usado DESC;
```
### 35. 📋 Obtener la cantidad de muertes totales en todas las partidas.:
```sql
SELECT SUM(e.muertes) AS Total_Muertes
FROM `estadisticas en juego` e;

```
### 36. 📋 Obtener el total de partidas jugadas por cada campeón.:
```sql
SELECT c.nombre AS Campeon, COUNT(j.campeones_id_campeon) AS Total_Partidas
FROM campeones c
JOIN jugadores j ON c.id_campeon = j.campeones_id_campeon
GROUP BY c.nombre;
```
### 37. 📋 Obtener el promedio de muertes por rol en todas las partidas.:
```sql
SELECT r.nombre AS Rol, AVG(e.muertes) AS Promedio_Muertes
FROM roles r
JOIN jugadores j ON j.roles_id_rol = r.id_rol
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
GROUP BY r.nombre;
```
### 38. 📋 Obtener los cinco jugadores con más asistencias en total.:
```sql
SELECT j.id_jugador, SUM(e.asistencias) AS Total_Asistencias
FROM jugadores j
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
GROUP BY j.id_jugador
ORDER BY Total_Asistencias DESC
LIMIT 5;
```
### 39. 📋 Contar cuántos hechizos de invocador hay en total:
```sql
SELECT COUNT(*) AS Total_Hechizos FROM `hechizos de invocador`;
```
### 40. 📋 Listar los campeones con más asesinatos en una sola partida:
```sql
SELECT c.nombre AS Campeón, MAX(e.asesinatos) AS Máximos_Asesinatos
FROM campeones c
JOIN jugadores j ON c.id_campeon = j.campeones_id_campeon
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
GROUP BY c.nombre
ORDER BY Máximos_Asesinatos DESC
LIMIT 5;
```