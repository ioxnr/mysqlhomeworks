CREATE VIEW prods_description(prod_id, prod_name, cat_name) 
AS SELECT p.id, p.name, c.name 
FROM products AS p
LEFT JOIN catalogs AS c
ON p.catalog_id = c.id;
