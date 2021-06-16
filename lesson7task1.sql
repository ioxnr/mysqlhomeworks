SELECT DISTINCT u.id, u.name
FROM users AS u
JOIN
orders AS o
ON
o.user_id = u.id;

-- ИЛИ

SELECT id, name 
FROM users 
WHERE id IN (SELECT user_id FROM orders);