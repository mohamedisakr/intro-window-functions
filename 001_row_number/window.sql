-- For each year, what were the best rated movies?
WITH ranking_movies AS
(
	SELECT title, year, rating, ROW_NUMBER() OVER (PARTITION BY year ORDER BY rating DESC) AS ranking
	FROM movies
)

SELECT title, year, rating, ranking
FROM ranking_movies
WHERE ranking = 1
ORDER BY year, ranking ASC









