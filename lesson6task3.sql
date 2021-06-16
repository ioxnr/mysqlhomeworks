SELECT COUNT(*) AS like_count 
FROM likes 
WHERE media_id IN (
SELECT id 
FROM media 
WHERE user_id IN (
SELECT user_id 
FROM (
SELECT user_id 
FROM profiles 
ORDER BY TIMESTAMPDIFF(year, birthday, NOW()) 
LIMIT 10
) AS T
));