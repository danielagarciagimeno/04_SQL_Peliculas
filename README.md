# Base de Datos de Contenidos Multimedia

## Descripción General

Esta base de datos está diseñada para gestionar y analizar información relacionada con contenido multimedia, como películas y series. Incluye datos clave como títulos, géneros, plataformas de transmisión, países de producción y créditos de los participantes (actores, directores, etc.). Su estructura permite realizar consultas complejas para obtener insights valiosos sobre las plataformas, la distribución de géneros y la participación de los actores en diferentes producciones.

## Estructura de la Base de Datos

La base de datos está compuesta por varias tablas interconectadas:

- **`titles`**: Contiene información general sobre películas y series, como el título, tipo (película o serie), descripción, año de lanzamiento, duración, y puntajes en IMDb y TMDb.
- **`generos_unicos` y `generos_titles`**: Gestionan los géneros de cada título, permitiendo una clasificación precisa por tipo de contenido (como drama, acción, comedia, etc.).
- **`platform_unicos` y `platform_titles`**: Permiten identificar las plataformas de transmisión (como Netflix, Amazon Prime, etc.) donde están disponibles los títulos.
- **`paises_unicos` y `country_title`**: Relacionan los países de producción con los títulos correspondientes.
- **`credits`**: Incluye información sobre las personas involucradas en los títulos, como actores, directores y los roles que desempeñaron.

## Características Clave

- **Flexibilidad para Consultas**: La estructura normalizada permite realizar consultas avanzadas, como la cantidad de películas y series disponibles por plataforma, los actores que participan en más producciones o la distribución de géneros por país de producción.
- **Relaciones Bien Definidas**: Las tablas están diseñadas con relaciones claras (foreign keys) que aseguran consistencia y eliminan redundancias.
- **Compatibilidad con Análisis Avanzados**: Permite filtrar, agrupar y analizar datos a nivel detallado, como identificar plataformas con el mayor número de películas o determinar tendencias en la producción por país.

## Uso

Esta base de datos es ideal para proyectos relacionados con el análisis de plataformas de transmisión, comparativas de contenido entre países, y estudios de participación de actores o directores en la industria audiovisual. Puede ser usada en aplicaciones de visualización de datos, dashboards interactivos o estudios académicos sobre tendencias del entretenimiento.

## Requerimientos y Tecnologías

Para implementar esta base de datos, se recomienda el uso de un sistema de gestión de bases de datos relacionales como **MySQL** o **PostgreSQL**. Además, puedes utilizar herramientas como **Python** o **R** para consultas y análisis avanzados, o integrarla con librerías de visualización de datos para dashboards.

## Contribución

Si deseas contribuir con mejoras, optimizaciones o nuevas consultas SQL, siéntete libre de realizar un fork de este repositorio y enviar tus propuestas mediante pull requests. ¡Tu contribución será muy apreciada!

---

¡Gracias por tu interés en este proyecto de base de datos de contenido multimedia!
