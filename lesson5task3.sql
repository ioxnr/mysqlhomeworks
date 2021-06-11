DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';


INSERT INTO storehouses_products (storehouse_id, product_id, value) VALUES
  (1, 1, 500),
  (2, 2, 0),
  (1, 3, 600),
  (3, 4, 2500),
  (1, 5, 0),
  (2, 6, 300);
 
  
 SELECT * 
 FROM storehouses_products 
 ORDER BY CASE WHEN value > 0 then 0 else 1 end, 
 value;