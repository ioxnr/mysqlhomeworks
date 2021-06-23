DELIMITER //

CREATE TRIGGER check_products_insert BEFORE INSERT ON products 
FOR EACH ROW 
BEGIN 
	IF(ISNULL(NEW.name) AND ISNULL(NEW.description)) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Fields name and description cannot be NULL';
	END IF; 
END//

-- аналогично для UPDATE 

CREATE TRIGGER check_products_update BEFORE UPDATE ON products 
FOR EACH ROW 
BEGIN 
	IF(ISNULL(NEW.name) AND ISNULL(NEW.description)) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Fields name and description cannot be NULL'; 
	END IF; 
END// 
