DROP USER IF EXISTS 'shop_read'@'localhost';
CREATE USER 'shop_read'@'localhost' IDENTIFIED WITH sha256_password BY '1234';
GRANT SELECT ON shop.* TO 'shop_read'@'localhost';

DROP USER IF EXISTS 'shop'@'localhost';
CREATE USER 'shop'@'localhost' IDENTIFIED WITH sha256_password BY '12345';
GRANT ALL ON shop.* TO 'shop'@'localhost';
GRANT GRANT OPTION ON shop.* TO 'shop'@'localhost';
