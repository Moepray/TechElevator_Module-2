-- 17. The titles and taglines of movies that are in the "Family" genre and Samuel L. Jackson has acted in (4 rows)
SELECT title ,tagline
FROM movie m 
JOIN movie_actor ma ON ma.movie_id = m.movie_id 
JOIN person p ON p.person_id = ma.actor_id 
JOIN movie_genre mg ON mg.movie_id = m.movie_id
JOIN genre g ON mg.genre_id = g.genre_id 
WHERE g.genre_name = 'Family' AND p.person_name ='Samuel L. Jackson';