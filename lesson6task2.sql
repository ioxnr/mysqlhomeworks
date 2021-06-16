SELECT peer_id, COUNT(*) AS msg_count
FROM 
(SELECT
CASE WHEN from_user_id = 501
THEN
to_user_id 
ELSE
from_user_id 
END AS peer_id
FROM messages
WHERE (from_user_id IN (
	SELECT initiator_user_id FROM friend_requests WHERE target_user_id = 501 AND status = 'approved'
UNION
	SELECT target_user_id FROM friend_requests WHERE initiator_user_id = 501 AND status = 'approved')
OR to_user_id IN (
	SELECT initiator_user_id FROM friend_requests WHERE target_user_id = 501 AND status = 'approved'
UNION
	SELECT target_user_id FROM friend_requests WHERE initiator_user_id = 501 AND status = 'approved'))
AND (from_user_id = 501 OR to_user_id = 501)) AS M
GROUP BY peer_id
LIMIT 1;
