-- 11. The titles of the movies in the "Star Wars Collection" ordered by release date, most recent to earliest (9 rows)
SELECT title 
FROM movie m 
JOIN collection c ON m.collection_id = c.collection_id
WHERE c.collection_name LIKE '%Star Wars%'
ORDER BY release_date DESC;
