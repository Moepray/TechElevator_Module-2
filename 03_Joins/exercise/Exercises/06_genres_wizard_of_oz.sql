-- 6. The genres of "The Wizard of Oz" (3 rows)
SELECT g.genre_name
FROM genre g
JOIN movie_genre mg on g.genre_id = mg.genre_id
JOIN movie m ON m.movie_id = mg.movie_id 
WHERE m.title = 'The Wizard of Oz';
