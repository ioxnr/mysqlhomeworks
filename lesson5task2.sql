DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
);


INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('Геннадий', '1990-10-05', '20.10.2017 8:10', '20.10.2017 8:10'),
  ('Наталья', '1984-11-12', '10.05.2019 4:25', '27.04.2019 7:30');

 
UPDATE users 
SET created_at = STR_TO_DATE(created_at, '%d.%c.%Y %k:%i'),
updated_at = STR_TO_DATE(updated_at, '%d.%c.%Y %k:%i');
