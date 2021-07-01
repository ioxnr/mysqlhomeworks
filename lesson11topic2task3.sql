-- MongoDB

use catalogs
db.catalogs.insertMany([{"name": "Процессоры"}, {"name": "Мат.платы"}, {"name": "Видеокарты"}])

db.catalogs.find()

use products
db.products.insertMany([
	{"name": "Intel Core i3-8100", "description": "Процессор для настольных ПК", "price": "8000.00", "catalog_id": "Процессоры", "created_at": new Date(), "updated_at": new Date()},
	{"name": "AMD FX-8320", "description": "Процессор для настольных ПК", "price": "4000.00", "catalog_id": "Процессоры", "created_at": new Date(), "updated_at": new Date()},
	{"name": "AMD FX-8320E", "description": "Процессор для настольных ПК", "price": "4500.00", "catalog_id": "Процессоры", "created_at": new Date(), "updated_at": new Date()}
	])

db.products.find().pretty()
