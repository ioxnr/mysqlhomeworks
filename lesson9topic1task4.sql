DELETE FROM users
WHERE created_at NOT IN (
SELECT * 
FROM (
 	SELECT created_at
 	FROM users
 	ORDER BY created_at DESC
 	LIMIT 5
) AS fresh
) ORDER BY created_at DESC;
