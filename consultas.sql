-- 1. Obtener todos los campeones y sus respectivas regiones.
SELECT campeones.nombre AS campeon, regiones.nombre AS region
FROM campeones
JOIN regiones ON campeones.regiones_id_region = regiones.id_region;

-- 2. Listar todos los objetos disponibles en el juego.
SELECT * FROM objetos;

-- 3. Mostrar los jugadores junto con sus estadísticas en juego.
SELECT jugadores.id_jugador, estadisticas.asesinatos, estadisticas.muertes, estadisticas.asistencias
FROM jugadores
JOIN `estadisticas en juego` estadisticas ON jugadores.`estadisticas en juego_id_estadistica` = estadisticas.id_estadistica;

-- 4. Obtener el historial de partidas de un jugador específico.
SELECT jugadores.id_jugador, partidas.id_partida, partidas.fecha, partidas.duracion, partidas.modo_juego
FROM jugadores
JOIN partidas ON jugadores.partidas_id_partida = partidas.id_partida
WHERE jugadores.id_jugador = 1;

-- 5. Contar cuántos jugadores hay en cada rol.
SELECT roles.nombre AS rol, COUNT(jugadores.id_jugador) AS cantidad_jugadores
FROM jugadores
JOIN roles ON jugadores.roles_id_rol = roles.id_rol
GROUP BY roles.nombre;

--6. Consulta para obtener los campeones que más aparecen en las partidas
SELECT c.nombre AS Campeón, COUNT(j.campeones_id_campeon) AS Veces_usado
FROM jugadores j
JOIN campeones c ON j.campeones_id_campeon = c.id_campeon
GROUP BY c.nombre
ORDER BY Veces_usado DESC;

--7. Encuentra la partida más larga registrada
SELECT id_partida, duracion, modo_juego, fecha
FROM partidas
ORDER BY duracion DESC
LIMIT 1;

--8.consulta para ver los jugadores y sus KDA en la partida
SELECT j.id_jugador, SUM(e.muertes) AS Total_muertes, SUM(e.asesinatos) AS Total_asesinatos, SUM(e.asistencias) AS Total_asistencias
FROM jugadores j
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
GROUP BY j.id_jugador;

--9. consulta para los objetos mas caros
SELECT nombre, tipo, precio
FROM objetos
ORDER BY precio DESC
LIMIT 5;

--10. consulta para los objetos mas ultizados en cada campeon 
SELECT o.nombre AS Objeto, COUNT(cho.objetos_id_objeto) AS Veces_usado
FROM campeones_has_objetos cho
JOIN objetos o ON cho.objetos_id_objeto = o.id_objeto
JOIN campeones c ON cho.campeones_id_campeon = c.id_campeon
WHERE c.nombre = 'Jhin' 
GROUP BY o.nombre
ORDER BY Veces_usado DESC;

--11. consulta para todos los objetos que sean de defensa
SELECT nombre FROM objetos WHERE tipo = 'Defensivo';

--12. consulta para ver el total de objetos por categoria 
SELECT tipo, COUNT(*) AS Total_Objetos FROM objetos GROUP BY tipo;

--13. consulta para todos los objetos con un precio mayor a 3000
SELECT nombre, precio FROM objetos WHERE precio > 3000;

--14. consulta para los objetos mas baratos
SELECT nombre, precio FROM objetos ORDER BY precio ASC LIMIT 5;

--15. consulta para saber cuantos objetos hay en total
SELECT COUNT(*) AS Total_Objetos FROM objetos;

--16. consulta promedio de precio de los objetos
SELECT AVG(precio) AS Promedio_Precio FROM objetos;

--17. consulta para saber cuantos campeones hay en total
SELECT COUNT(*) AS Total_Campeones FROM campeones;

--18. consulta para listar todos los jugadores registrados
SELECT * FROM jugadores;

--19. consulta para saber el jugador con mas asesinatos totales
SELECT j.id_jugador, SUM(e.asesinatos) AS Total_Asesinatos
FROM jugadores j
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
GROUP BY j.id_jugador
ORDER BY Total_Asesinatos DESC
LIMIT 1;

--20. consulta para saber el promedio de asistencias por partida para un jugador específico:
SELECT AVG(e.asistencias) AS Promedio_Asistencias
FROM `estadisticas en juego` e
JOIN jugadores j ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
WHERE j.id_jugador = 1; 

--21. Jugador con mayor oro ganado en total
SELECT j.id_jugador, SUM(e.oro_ganado) AS Total_Oro
FROM jugadores j
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
GROUP BY j.id_jugador
ORDER BY Total_Oro DESC
LIMIT 1;

--22. Jugador con más muertes en una sola partida
SELECT j.id_jugador, MAX(e.muertes) AS Máximas_Muertes
FROM jugadores j
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
GROUP BY j.id_jugador
ORDER BY Máximas_Muertes DESC
LIMIT 1;

--23 Estadísticas de un jugador en todas las partidas
SELECT j.id_jugador, e.asesinatos, e.muertes, e.asistencias, e.oro_ganado
FROM jugadores j
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
WHERE j.id_jugador = 1; -- Cambia '1' por el ID del jugador

--24. Promedio de muertes de un jugador en todas sus partidas
SELECT AVG(e.muertes) AS Promedio_Muertes
FROM jugadores j
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
WHERE j.id_jugador = 1; -- Cambia '1' por el ID del jugador

--25. Total de asesinatos por rol
SELECT r.nombre AS Rol, SUM(e.asesinatos) AS Total_Asesinatos
FROM roles r
JOIN jugadores j ON j.roles_id_rol = r.id_rol
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
GROUP BY r.nombre;

--26. Obtener todas las partidas jugadas
SELECT * FROM partidas;

--27 Contar cuántas partidas hay en total
SELECT COUNT(*) AS Total_Partidas FROM partidas;

--28 Duración promedio de las partidas
SELECT AVG(duracion) AS Promedio_Duración FROM partidas;

--29 Partidas en modo "Ranked"
SELECT * FROM partidas WHERE modo_juego = 'Ranked';

--30 Partida más reciente jugada
SELECT * FROM partidas ORDER BY fecha DESC LIMIT 1;

--30 Cantidad de partidas jugadas por mes
SELECT EXTRACT(MONTH FROM fecha) AS Mes, COUNT(*) AS Total_Partidas
FROM partidas
GROUP BY Mes;

--31 Promedio de duración de partidas por modo de juego
SELECT modo_juego, AVG(duracion) AS Promedio_Duración
FROM partidas
GROUP BY modo_juego;

--32 Número de partidas por rol
SELECT r.nombre AS Rol, COUNT(j.id_jugador) AS Número_Partidas
FROM roles r
JOIN jugadores j ON j.roles_id_rol = r.id_rol
GROUP BY r.nombre;

-- 33. Jugador que más partidas ha jugado.
SELECT j.id_jugador, COUNT(p.id_partida) AS Partidas_Jugadas
FROM jugadores j
JOIN partidas p ON j.partidas_id_partida = p.id_partida
GROUP BY j.id_jugador
ORDER BY Partidas_Jugadas DESC
LIMIT 1;

-- 36. Listar los objetos más utilizados en las partidas de un jugador específico.
SELECT o.nombre AS Objeto, COUNT(cho.objetos_id_objeto) AS Veces_usado
FROM campeones_has_objetos cho
JOIN objetos o ON cho.objetos_id_objeto = o.id_objeto
JOIN jugadores j ON cho.campeones_id_campeon = j.campeones_id_campeon
WHERE j.id_jugador = 1 -- Cambia '1' por el ID del jugador
GROUP BY o.nombre
ORDER BY Veces_usado DESC;

-- 37. Obtener la cantidad de muertes totales en todas las partidas.
SELECT SUM(e.muertes) AS Total_Muertes
FROM `estadisticas en juego` e;

-- 38. Obtener el total de partidas jugadas por cada campeón.
SELECT c.nombre AS Campeon, COUNT(j.campeones_id_campeon) AS Total_Partidas
FROM campeones c
JOIN jugadores j ON c.id_campeon = j.campeones_id_campeon
GROUP BY c.nombre;

-- 39. Obtener el promedio de muertes por rol en todas las partidas.
SELECT r.nombre AS Rol, AVG(e.muertes) AS Promedio_Muertes
FROM roles r
JOIN jugadores j ON j.roles_id_rol = r.id_rol
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
GROUP BY r.nombre;

-- 40. Obtener los cinco jugadores con más asistencias en total.
SELECT j.id_jugador, SUM(e.asistencias) AS Total_Asistencias
FROM jugadores j
JOIN `estadisticas en juego` e ON j.`estadisticas en juego_id_estadistica` = e.id_estadistica
GROUP BY j.id_jugador
ORDER BY Total_Asistencias DESC
LIMIT 5;