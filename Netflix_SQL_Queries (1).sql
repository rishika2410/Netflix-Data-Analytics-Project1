
-- Netflix SQL Project Queries

SELECT COUNT(*) AS total_records FROM netflix_titles;

SELECT type, COUNT(*) AS total
FROM netflix_titles
GROUP BY type;

SELECT country, COUNT(*) AS total
FROM netflix_titles
GROUP BY country
ORDER BY total DESC;

SELECT release_year, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year;

SELECT rating, COUNT(*) AS total
FROM netflix_titles
GROUP BY rating
ORDER BY total DESC;

SELECT director, COUNT(*) AS total_titles
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;

SELECT title, duration
FROM netflix_titles
ORDER BY duration DESC;

SELECT *
FROM netflix_titles
WHERE release_year >= 2020;

SELECT country, type, COUNT(*) AS total
FROM netflix_titles
GROUP BY country, type
ORDER BY total DESC;

SELECT AVG(release_year) AS avg_release_year
FROM netflix_titles;
