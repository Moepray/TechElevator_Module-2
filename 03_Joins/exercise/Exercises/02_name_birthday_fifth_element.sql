-- 2. The names and birthdays of actors in "The Fifth Element" (15 rows)
SELECT person_name ,birthday
FROM person p
JOIN movie_actor ma ON p.person_id = ma.actor_id
JOIN movie ON ma.movie_id = movie.movie_id
WHERE title LIKE 'The Fifth Element';