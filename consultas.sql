--consulta 1: esta consulta sirve para listar los campeones con su
SELECT campeones.nombre AS nombre_campeon, regiones.nombre AS nombre_region
FROM campeones
JOIN regiones on campeones.regiones_id_region = regiones.id_region;

--consulta 2: esta consulta sirve para listar los jugadores con las estadisticas que tuvieron en la partida 
SELECT jugadores.id_jugador, 
       jugadores.roles_id_rol, 
       estadisticas.muertes, 
       estadisticas.asesinatos, 
       estadisticas.asistencias, 
       estadisticas.oro_ganado
FROM jugadores
JOIN `estadisticas en juego` AS estadisticas 
    ON jugadores.`estadisticas en juego_id_estadistica` = estadisticas.id_estadistica;

--consulta 3: esta consulta lista todos los objetos disponibles 
SELECT nombre, tipo, precio, descripcion
FROM objetos;

--consulta 4: esta consulta es para ver el historial de un jugador en especifico
SELECT jugadores.id_jugador,
       partidas.id_partida,
       partidas.duracion,
       partidas.modo_juego,
       partidas.fecha
FROM jugadores
JOIN partidas ON jugadores.partidas_id_partida = partidas.id_partida
WHERE jugadores.id_jugador = 3
;
