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

### 1. 📋 **Listar todos los campeones**:
```sql
SELECT * FROM campeones;
