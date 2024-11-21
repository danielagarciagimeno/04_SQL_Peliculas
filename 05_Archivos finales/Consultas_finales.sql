USE sql_peliculas;

SELECT title, imdb_score, tmdb_score
FROM titles
WHERE imdb_score IS NOT NULL and tmdb_score IS NOT NULL
ORDER BY imdb_score DESC;

-- PLataforma con mejor ranking de películas y series
SELECT t.title, g.genres
FROM titles t
JOIN generos_titles gt ON t.id_titles = gt.id_title
JOIN generos_unicos g ON gt.id_genre = g.id_genre
WHERE t.type = 'movie';

CREATE VIEW popular_movies AS
SELECT title, tmdb_popularity
FROM titles
WHERE type = 'movie' AND tmdb_score > 7;

CREATE VIEW popular_movies_imdb AS
SELECT title, imdb_votes, imdb_score
FROM titles
WHERE type = 'movie' AND imdb_score > 7;

SELECT * FROM popular_movies
ORDER BY tmdb_popularity DESC;

SELECT * FROM popular_movies_imdb
ORDER BY imdb_votes DESC;

SELECT pu.id_platform
FROM platform_unicos pu
WHERE pu.id_platform IN (
    SELECT pt.id_platform
    FROM platform_titles pt
    GROUP BY pt.id_platform
    HAVING COUNT(pt.id_title) > 10000
);


#cuantas peliculas hay por plataforma
SELECT pu.id_platform AS platform_name, COUNT(pt.id_title) AS total_movies
FROM platform_unicos pu
JOIN platform_titles pt ON pu.id_platform = pt.id_platform
GROUP BY pu.id_platform
ORDER BY total_movies DESC;


CREATE TEMPORARY TABLE temp_titles_countries AS
SELECT t.title, pu.id_countries
FROM titles t
JOIN country_title ct ON t.id_titles = ct.id_title
JOIN paises_unicos pu ON ct.id_countries = pu.id_countries;

SELECT * FROM temp_titles_countries
ORDER BY id_countries;

SELECT * FROM paises_unicos
ORDER BY countries DESC;

-- Consulta la tabla temporal
SELECT * FROM temp_titles_countries;

SELECT * FROM temp_titles_countries
WHERE id_countries = '1';

#cuantas películas hay por genero
WITH genre_counts AS (
    SELECT g.genres, COUNT(gt.id_title) AS total_titles
    FROM generos_unicos g
    JOIN generos_titles gt ON g.id_genre = gt.id_genre
    GROUP BY g.genres
)
SELECT * FROM genre_counts
WHERE total_titles > 10
ORDER BY total_titles DESC;


SELECT distinct count(title) AS peliculas
FROM titles; 

#que plataforma tiene mejor score según imdb_score
SELECT 
    pu.id_platform AS platform_name,
    AVG(t.imdb_score) AS avg_imdb_score
FROM 
    titles t
JOIN 
    platform_titles pt ON t.id_titles = pt.id_title
JOIN 
    platform_unicos pu ON pt.id_platform = pu.id_platform
GROUP BY 
    pu.id_platform
ORDER BY 
    avg_imdb_score DESC
LIMIT 1;

SELECT * FROM platform_unicos;

#Actores que han trabajado más veces
SELECT name AS actor_name, COUNT(id_titles) AS appearances
FROM credits
WHERE role = 'actor'
GROUP BY name
HAVING COUNT(id_titles) > 5
ORDER BY appearances DESC
LIMIT 10;

-- Ranking de los generos segun si es pelicula o show
SELECT
    titles.type,
    generos_unicos.genres AS genre,
    COUNT(*) AS genre_count
FROM
    titles
JOIN
    generos_titles ON titles.id_titles COLLATE utf8mb4_unicode_ci = generos_titles.id_title COLLATE utf8mb4_unicode_ci
JOIN
    generos_unicos ON generos_titles.id_genre = generos_unicos.id_genre
GROUP BY
    titles.type,
    generos_unicos.genres
ORDER BY
    titles.type,
    genre_count DESC;
    
-- Año con más estrenos 
SELECT
    release_year,
    COUNT(*) AS release_count
FROM
    titles
GROUP BY
    release_year
ORDER BY
    release_count DESC
LIMIT 1;


-- Número de películas y show por plataforma 
SELECT
    t.type,
    pu.platform AS platform_name,
    COUNT(*) AS count
FROM
    titles t
JOIN
    platform_titles pt ON t.id_titles = pt.id_title
JOIN
    platform_unicos pu ON pt.id_platform = pu.id_platform
GROUP BY
    t.type, pu.platform
ORDER BY
    t.type, pu.platform;

-- Año con más estrenos
SELECT
    release_year,
    COUNT(*) AS release_count
FROM
    titles
GROUP BY
    release_year
ORDER BY
    release_count DESC
LIMIT 10;

-- Paises con más producciones
SELECT
    paises_unicos.countries,
    COUNT(*) AS production_count
FROM
    titles
JOIN
    country_title ON titles.id_titles COLLATE utf8mb4_unicode_ci = country_title.id_title COLLATE utf8mb4_unicode_ci
JOIN
    paises_unicos ON country_title.id_countries = paises_unicos.id_countries
GROUP BY
    paises_unicos.countries
ORDER BY
    production_count DESC
LIMIT 5;