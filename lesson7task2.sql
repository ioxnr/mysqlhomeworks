SELECT p.name, c.name
FROM products AS p
JOIN
catalogs AS c
ON 
p.catalog_id = c.id;