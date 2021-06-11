DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');
  

 SELECT * 
 FROM catalogs 
 WHERE id IN (5, 1, 2)
 ORDER BY CASE
 WHEN id = 5 THEN 0
 WHEN id = 1 THEN 1
 WHEN id = 2 THEN 2
 END;