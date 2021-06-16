DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  `from` VARCHAR(255),
  `to` VARCHAR(255)
);

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(255),
  name VARCHAR(255)
);

INSERT INTO flights (`from`, `to`) VALUES
  ('moscow', 'omsk'),
  ('novgorod', 'kazan'),
  ('irkutsk', 'moscow'),
  ('omsk', 'irkutsk'),
  ('moscow', 'kazan');
  
INSERT INTO cities (label, name) VALUES
  ('moscow', 'Москва'),
  ('irkutsk', 'Иркутск'),
  ('novgorod', 'Новгород'),
  ('kazan', 'Казань'),
  ('omsk', 'Омск');
  
 
SELECT 
id, 
(SELECT name FROM cities WHERE label = `from`) AS `from`,
(SELECT name FROM cities WHERE label = `to`) AS `to`
FROM flights 
ORDER BY id;

-- ИЛИ

SELECT
f.id,
c1.name AS `from`,
c2.name AS `to`
FROM
flights AS f
JOIN cities AS c1 ON f.`from` = c1.label
JOIN cities AS c2 ON f.`to` = c2.label
ORDER BY f.id;