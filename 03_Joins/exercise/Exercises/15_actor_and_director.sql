-- 15. The title of the movie and the name of director for movies where the director was also an actor in the same movie (73 rows)
SELECT  m.title, p.person_name
FROM movie m
JOIN movie_actor ma ON ma.movie_id = m.movie_id
JOIN person  p ON p.person_id = ma.actor_id
WHERE ma.actor_id = m.director_id;