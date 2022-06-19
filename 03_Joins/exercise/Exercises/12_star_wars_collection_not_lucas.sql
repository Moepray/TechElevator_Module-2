-- 12. The titles of the movies in the "Star Wars Collection" that weren't directed by George Lucas (5 rows)
SELECT title 
FROM movie m 
JOIN collection c ON m.collection_id = c.collection_id 
JOIN person p ON p.person_id = m.director_id 
WHERE c.collection_name LIKE '%Star Wars%' AND person_name NOT LIKE 'George Lucas';
