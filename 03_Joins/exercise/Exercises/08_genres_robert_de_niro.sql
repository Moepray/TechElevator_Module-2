-- 8. The genres of movies that Robert De Niro has appeared in that were released in 2010 or later (6 rows)
SELECT DISTINCT genre_name
FROM genre g  
JOIN movie_genre mg ON g.genre_id =mg.genre_id 
JOIN movie m ON m.movie_id = mg.movie_id 
JOIN movie_actor ma on m.movie_id = ma.movie_id 
JOIN person p ON p.person_id =ma.actor_id 
WHERE p.person_name = 'Robert De Niro' AND release_date >'2010-01-01';