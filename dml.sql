use mydb

-- -----------------------------------------------------
-- Insertar datos en la tabla `regiones`
-- -----------------------------------------------------
INSERT INTO `mydb`.`regiones` (id_region, nombre) VALUES
(1, 'Demacia'),
(2, 'Noxus'),
(3, 'Ionia'),
(4, 'Piltover'),
(5, 'Zaun'),
(6, 'Freljord'),
(7, 'Shurima'),
(8, 'Targon'),
(9, 'Las Islas de la Sombra'),
(10, 'Aguas Estancadas'),
(11, 'El Vacío'),
(12, 'Bandle City'),
(13, 'Ixtal');


-- -----------------------------------------------------
-- Insertar datos en la tabla `runas`
-- -----------------------------------------------------
INSERT INTO `mydb`.`runas` (id_runa, nombre, tipo) VALUES
(1, 'Conquistador', 'Precisión'),
(2, 'Electrocutar', 'Dominación'),
(3, 'Grasp of the Undying', 'Valor'),
(4, 'Phase Rush', 'Brujería');

-- -----------------------------------------------------
-- Insertar datos en la tabla `chromas`
-- -----------------------------------------------------
INSERT INTO `mydb`.`chromas` (id_chroma, nombre) VALUES
(1, 'Chroma Azul'),
(2, 'Chroma Rojo'),
(3, 'Chroma Verde'),
(4, 'Chroma Amarillo'),
(5, 'Chroma Negro'),
(6, 'Chroma Rosa'),
(7, 'Chroma Morado'),
(8, 'Chroma Turquesa'),
(9, 'Chroma Naranja'),
(10, 'Chroma Gris'),
(11, 'Chroma Plateado'),
(12, 'Chroma Dorado'),
(13, 'Chroma Cian'),
(14, 'Chroma Lima'),
(15, 'Chroma Café'),
(16, 'Chroma Coral'),
(17, 'Chroma Indigo'),
(18, 'Chroma Magenta'),
(19, 'Chroma Violeta'),
(20, 'Chroma Celeste');



-- -----------------------------------------------------
-- Insertar datos en la tabla `skins`
-- -----------------------------------------------------
INSERT INTO `mydb`.`skins` (id_skin, nombre, precio, chromas_id_chroma) VALUES
(1, 'Garen de los Eones', '975', 1),
(2, 'Ahri la Guía', '1350', 2),
(3, 'Zed de los Osos', '975', 3),
(4, 'Lux Estelar', '1350', 4),
(5, 'Jinx Chica de Pólvora', '975', 5),
(6, 'Lee Sin de la Tempestad', '1350', 6),
(7, 'Thresh el Sombra', '975', 7),
(8, 'Vayne la Cazadora', '1350', 8),
(9, 'Yasuo el Fantasma', '975', 9),
(10, 'Katarina Espía', '1350', 10),
(11, 'Darius el Dictador', '975', 1),
(12, 'Morgana la Oscura', '1350', 2),
(13, 'Riven la Guerrera', '975', 3),
(14, 'Akali la Ejecutora', '1350', 4),
(15, 'Caitlyn la Detectiva', '975', 5),
(16, 'Nautilus el Acorazado', '1350', 6),
(17, 'Rammus el Blindado', '975', 7),
(18, 'Fizz el Marisquero', '1350', 8),
(19, 'Ezreal el Explorador', '975', 9),
(20, 'Jhin el Virtuoso', '1350', 10);


-- -----------------------------------------------------
-- Insertar datos en la tabla `campeones`
-- -----------------------------------------------------
INSERT INTO `mydb`.`campeones` (id_campeon, nombre, precio, regiones_id_region, runas_id_runa, skins_id_skin) VALUES
(1, 'Garen', '6300', 1, 1, 1), 
(2, 'Ahri', '6300', 3, 2, 2),  
(3, 'Zed', '4800', 3, 1, 3),    
(4, 'Lux', '6300', 1, 2, 4),    
(5, 'Jinx', '6300', 5, 3, 5),   
(6, 'Lee Sin', '6300', 3, 1, 6), 
(7, 'Thresh', '6300', 9, 1, 7), 
(8, 'Vayne', '6300', 1, 2, 8),  
(9, 'Yasuo', '6300', 3, 1, 9),  
(10, 'Katarina', '4800', 2, 2, 10), 
(11, 'Darius', '6300', 2, 1, 11), 
(12, 'Morgana', '6300', 1, 2, 12), 
(13, 'Riven', '6300', 2, 1, 13), 
(14, 'Akali', '6300', 3, 1, 14), 
(15, 'Caitlyn', '6300', 4, 3, 15),
(16, 'Nautilus', '6300', 10, 2, 16),
(17, 'Rammus', '4800', 7, 1, 17), 
(18, 'Fizz', '6300', 10, 2, 18),
(19, 'Ezreal', '6300', 4, 3, 19), 
(20, 'Jhin', '6300', 3, 2, 20);


-- -----------------------------------------------------
-- Insertar datos en la tabla `roles`
-- -----------------------------------------------------
INSERT INTO `mydb`.`roles` (id_rol, nombre) VALUES
(1, 'Top'),
(2, 'Jungla'),
(3, 'Mid'),
(4, 'ADC'),
(5, 'Soporte')



-- -----------------------------------------------------
-- Insertar datos en la tabla `estadisticas en juego`
-- -----------------------------------------------------
INSERT INTO `mydb`.`estadisticas en juego` (id_estadistica, muertes, asesinatos, asistencias, oro_ganado) VALUES
(1, 2, 5, 8, '15000'),
(2, 1, 7, 4, '12000'),
(3, 3, 3, 10, '18000'),
(4, 0, 10, 5, '20000');

-- -----------------------------------------------------
-- Insertar datos en la tabla `partidas`
-- -----------------------------------------------------
INSERT INTO `mydb`.`partidas` (id_partida, duracion, modo_juego, fecha) VALUES
(1, 1800, 'Clásico', '2024-09-01'),
(2, 2100, 'Ranked', '2024-09-02'),
(3, 1500, 'Aram', '2024-09-03'),
(4, 2400, 'Clásico', '2024-09-04'),
(5, 1800, 'Ranked', '2024-09-05'),
(6, 2000, 'Clásico', '2024-09-06'),
(7, 1700, 'Ranked', '2024-09-07'),
(8, 2200, 'Aram', '2024-09-08'),
(9, 1900, 'Clásico', '2024-09-09'),
(10, 2500, 'Ranked', '2024-09-10'),
(11, 1650, 'Clásico', '2024-09-11'),
(12, 2100, 'Aram', '2024-09-12'),
(13, 1800, 'Ranked', '2024-09-13'),
(14, 1750, 'Clásico', '2024-09-14'),
(15, 2000, 'Ranked', '2024-09-15'),
(16, 1900, 'Clásico', '2024-09-16'),
(17, 2500, 'Aram', '2024-09-17'),
(18, 2200, 'Clásico', '2024-09-18'),
(19, 1800, 'Ranked', '2024-09-19'),
(20, 2000, 'Clásico', '2024-09-20');


-- -----------------------------------------------------
-- Insertar datos en la tabla `equipos`
-- -----------------------------------------------------
INSERT INTO `mydb`.`equipos` (id_equipo, ranking) VALUES
(1, 'plata'),
(2, 'plata');


-- -----------------------------------------------------
-- Insertar datos en la tabla `perfil jugadores`
-- -----------------------------------------------------
INSERT INTO `mydb`.`perfil jugadores` (id_perfil, nivel, rango) VALUES
(1, 30, 'Plata'),
(2, 28, 'Oro'),
(3, 32, 'Plata'),
(4, 25, 'Bronce'),
(5, 29, 'Oro'),
(6, 31, 'Platino'),
(7, 24, 'Bronce'),
(8, 27, 'Oro'),
(9, 26, 'Plata'),
(10, 30, 'Plata'),
(11, 28, 'Oro'),
(12, 32, 'Platino'),
(13, 25, 'Bronce'),
(14, 29, 'Oro'),
(15, 31, 'Platino'),
(16, 24, 'Bronce'),
(17, 27, 'Oro'),
(18, 26, 'Plata'),
(19, 30, 'Plata'),
(20, 29, 'Oro');


-- -----------------------------------------------------
-- Insertar datos en la tabla `jugadores`
-- -----------------------------------------------------
INSERT INTO `mydb`.`jugadores` (id_jugador, roles_id_rol, `estadisticas en juego_id_estadistica`, partidas_id_partida, equipos_id_equipo, `perfil jugadores_id_perfil`, campeones_id_campeon) VALUES
(1, 1, 1, 1, 1, 1, 1),
(2, 1, 2, 1, 1, 2, 2),
(3, 2, 1, 1, 2, 3, 3),
(4, 2, 2, 2, 2, 4, 4),
(5, 3, 3, 2, 1, 5, 1),
(6, 3, 1, 2, 1, 6, 2),
(7, 4, 2, 2, 2, 7, 3),
(8, 4, 1, 1, 2, 8, 4),
(9, 1, 2, 2, 1, 9, 1),
(10, 2, 3, 1, 2, 10, 2);



-- -----------------------------------------------------
-- Insertar datos en la tabla `habilidades`
-- -----------------------------------------------------
INSERT INTO `mydb`.`habilidades` (id_habilidad, nombre, enfriamiento, tipo, daño, id_campeon) VALUES
(1, 'Agujero de la Sombra', '12s', 'Ofensiva', '200', 1),
(2, 'Puño de la Tempestad', '14s', 'Ofensiva', '180', 2),
(3, 'Tormenta de Hielo', '20s', 'Ofensiva', '220', 3),
(4, 'Destello', '28s', 'Defensiva', '0', 4),
(5, 'Grito de Guerra', '18s', 'Ofensiva', '150', 5),
(6, 'Rayo de Poder', '12s', 'Ofensiva', '210', 6),
(7, 'Escudo Sagrado', '30s', 'Defensiva', '0', 7),
(8, 'Luz de la Verdad', '15s', 'Ofensiva', '160', 8),
(9, 'Fuego Interno', '10s', 'Ofensiva', '190', 9),
(10, 'Viento Cortante', '20s', 'Ofensiva', '200', 10),
(11, 'Salto de Fe', '24s', 'Defensiva', '0', 1),
(12, 'Aliento de Fuego', '16s', 'Ofensiva', '175', 2),
(13, 'Luz de la Vida', '14s', 'Defensiva', '0', 3),
(14, 'Danzo Infernal', '22s', 'Ofensiva', '230', 4),
(15, 'Ruptura de Tierra', '18s', 'Ofensiva', '210', 5),
(16, 'Maldición', '28s', 'Ofensiva', '240', 6),
(17, 'Refugio', '20s', 'Defensiva', '0', 7),
(18, 'Vigía', '12s', 'Ofensiva', '195', 8),
(19, 'Tierra Ancestral', '14s', 'Ofensiva', '220', 9),
(20, 'Escudo Místico', '30s', 'Defensiva', '0', 10);


-- -----------------------------------------------------
-- Insertar datos en la tabla `objetos`
-- -----------------------------------------------------
INSERT INTO `mydb`.`objetos` (id_objeto, nombre, tipo, precio, descripcion) VALUES
(1, 'Espada de la Reina', 'Arma', '3200', 'Aumenta el daño físico.'),
(2, 'Capa de Fuego', 'Defensivo', '2400', 'Otorga resistencia mágica.'),
(3, 'Botas de Velocidad', 'Movilidad', '1100', 'Aumenta la velocidad de movimiento.'),
(4, 'Maldición de los Vientos', 'Mágico', '3000', 'Proporciona poder de habilidad.'),
(5, 'Guantelete de Hielo', 'Defensivo', '2600', 'Genera un área de ralentización.'),
(6, 'Arco Rúnico', 'Arma', '3400', 'Aumenta la velocidad de ataque y el daño mágico.'),
(7, 'Coraza del Gigante', 'Defensivo', '2800', 'Incrementa la vida máxima.'),
(8, 'Sombrero de Hechicero', 'Mágico', '3600', 'Aumenta enormemente el poder de habilidad.'),
(9, 'Hoja del Rey Arruinado', 'Arma', '3300', 'Roba vida y proporciona daño adicional.'),
(10, 'Zapatillas de Hechicero', 'Movilidad', '1100', 'Aumenta la velocidad y penetra resistencia mágica.'),
(11, 'Velo del Hada', 'Mágico', '3100', 'Proporciona un escudo mágico que bloquea la primera habilidad.'),
(12, 'Cetro de Cristal', 'Mágico', '2900', 'Ralentiza a los enemigos con habilidades.'),
(13, 'Fuerza de la Naturaleza', 'Defensivo', '2900', 'Aumenta la velocidad de movimiento y resistencia mágica.'),
(14, 'Pico de Montaña', 'Defensivo', '3200', 'Otorga escudo a un aliado cercano.'),
(15, 'Guadaña de la Niebla', 'Arma', '3400', 'Proporciona daño físico adicional en ataques básicos.'),
(16, 'Malla de Espinas', 'Defensivo', '2800', 'Devuelve daño a los atacantes en combate cuerpo a cuerpo.'),
(17, 'Máscara Abisal', 'Mágico', '3000', 'Reduce la resistencia mágica de los enemigos cercanos.'),
(18, 'Escudo del Sol', 'Defensivo', '2700', 'Causa daño por segundo a los enemigos cercanos.'),
(19, 'Filo Infinito', 'Arma', '3700', 'Aumenta el daño crítico significativamente.'),
(20, 'Báculo del Arcángel', 'Mágico', '3200', 'Proporciona maná y poder de habilidad creciente.'),
(21, 'Guantelete del Inmortal', 'Defensivo', '3100', 'Aumenta la vida máxima y ralentiza a los enemigos.'),
(22, 'Reloj de Arena de Zhonya', 'Mágico', '2900', 'Permite volverse invulnerable y no seleccionable por unos segundos.'),
(23, 'Bastón del Vacío', 'Mágico', '2650', 'Aumenta la penetración mágica.'),
(24, 'Yelmo Adaptativo', 'Defensivo', '2800', 'Reduce el daño recibido de habilidades repetitivas.'),
(25, 'Daga de Statikk', 'Arma', '2900', 'Proporciona daño en cadena a enemigos cercanos.'),
(26, 'Lágrima de la Diosa', 'Mágico', '850', 'Aumenta el maná máximo conforme lanzas habilidades.'),
(27, 'Baluarte del Guardián', 'Defensivo', '2400', 'Proporciona un escudo a los aliados cercanos.'),
(28, 'Mandíbula de Malmortius', 'Defensivo', '3100', 'Otorga un escudo cuando los puntos de vida están bajos.'),
(29, 'Hidra Voraz', 'Arma', '3500', 'Causa daño en área alrededor del campeón al golpear.'),
(30, 'Malla de Cadena', 'Defensivo', '800', 'Otorga armadura básica.'),
(31, 'Hoja Crepuscular de Draktharr', 'Arma', '3200', 'Proporciona invisibilidad al salir de combate.'),
(32, 'Manamune', 'Mágico', '2900', 'Aumenta el daño según el maná máximo acumulado.');


-- -----------------------------------------------------
-- Insertar datos en la tabla `hechizos de invocador`
-- -----------------------------------------------------
INSERT INTO `mydb`.`hechizos de invocador` (id_hechizo, nombre, id_campeon) VALUES
(1, 'Destello', 1),
(2, 'Curar', 2),
(3, 'Poder', 3),
(4, 'Aguante', 4);

-- -----------------------------------------------------
-- Insertar datos en la tabla `campeones_has_objetos`
-- -----------------------------------------------------
INSERT INTO `mydb`.`campeones_has_objetos` (campeones_id_campeon, objetos_id_objeto) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 1),
(4, 3),
(5, 2),
(6, 4),
(7, 1),
(8, 2),
(9, 3),
(10, 4),
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 1),
(16, 2),
(17, 3),
(18, 4),
(19, 1),
(20, 2),
(5, 4),
(6, 3),
(7, 2),
(8, 1),
(9, 4),
(10, 3);

