-- 4. The titles and taglines of all the movies that are in the Fantasy genre. Order the results by title (A-Z) (81 rows)
SELECT title, tagline
FROM movie  
JOIN movie_genre mg ON movie.movie_id = mg.movie_id
JOIN genre g ON g.genre_id = mg.genre_id
WHERE g.genre_name LIKE 'Fantasy'
ORDER BY title;

