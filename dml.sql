use mydb 

INSERT INTO `mydb`.`roles` (`id_rol`, `nombre`) VALUES
(1, 'Top'),
(2, 'Jungla'),
(3, 'Mid'),
(4, 'ADC'),
(5, 'Support');

INSERT INTO `mydb`.`regiones` (`id_region`, `nombre`) VALUES
(1, 'NA'),
(2, 'EUW'),
(3, 'KR'),
(4, 'LAN'),
(5, 'LAS');

INSERT INTO `estadisticas en juego` (`id_estadistica`, `muertes`, `asesinatos`, `asistencias`, `oro_ganado`) VALUES
(1, 2, 5, 3, '1200'),
(2, 1, 7, 2, '1400'),
(3, 3, 8, 6, '1800'),
(4, 0, 10, 7, '2000'),
(5, 5, 12, 8, '2500'),
(6, 2, 4, 10, '1100'),
(7, 3, 9, 5, '1600'),
(8, 6, 13, 4, '3000'),
(9, 4, 6, 9, '1700'),
(10, 5, 7, 2, '1900'),
(11, 3, 4, 8, '1500'),
(12, 6, 10, 3, '2700'),
(13, 2, 9, 7, '2300'),
(14, 1, 8, 6, '1800'),
(15, 4, 12, 2, '2400'),
(16, 3, 11, 5, '2100'),
(17, 5, 14, 6, '2600'),
(18, 7, 15, 4, '3200'),
(19, 6, 13, 8, '2900'),
(20, 8, 16, 7, '3500');

INSERT INTO `partidas` (`id_partida`, `duracion`, `modo_juego`, `fecha`) VALUES
(1, 40, 'ARAM', '2024-01-01'),
(2, 35, 'Clasificatoria', '2024-01-02'),
(3, 50, 'Normal', '2024-01-03'),
(4, 45, 'Clasificatoria', '2024-01-04'),
(5, 60, 'Torneo', '2024-01-05'),
(6, 55, 'Normal', '2024-01-06'),
(7, 40, 'ARAM', '2024-01-07'),
(8, 30, 'Clasificatoria', '2024-01-08'),
(9, 35, 'Normal', '2024-01-09'),
(10, 50, 'Torneo', '2024-01-10'),
(11, 60, 'Clasificatoria', '2024-01-11'),
(12, 45, 'Normal', '2024-01-12'),
(13, 40, 'ARAM', '2024-01-13'),
(14, 35, 'Clasificatoria', '2024-01-14'),
(15, 50, 'Normal', '2024-01-15'),
(16, 45, 'Clasificatoria', '2024-01-16'),
(17, 60, 'Torneo', '2024-01-17'),
(18, 55, 'Normal', '2024-01-18'),
(19, 40, 'ARAM', '2024-01-19'),
(20, 30, 'Clasificatoria', '2024-01-20');
