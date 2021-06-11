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
  (1, 1, 45),
  (2, 2, 86),
  (1, 3, 34),
  (3, 4, 60),
  (1, 5, 100),
  (2, 6, 11);
  
 
SELECT round(exp(sum(log(value))), 0) 
FROM storehouses_products;

