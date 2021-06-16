SELECT user_id, COUNT(*) AS activities
FROM
(
SELECT user_id 
FROM likes
UNION ALL
SELECT from_user_id AS user_id
FROM messages
UNION ALL
SELECT user_id 
FROM media 
UNION ALL
SELECT user_id 
FROM users_communities 
UNION ALL
SELECT initiator_user_id AS user_id
FROM friend_requests
) AS act
GROUP BY user_id
ORDER BY activities 
LIMIT 10;