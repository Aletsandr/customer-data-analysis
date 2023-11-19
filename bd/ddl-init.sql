CREATE TABLE IF NOT EXISTS Products( --идентификаторр продукта в заказе	
	id SERIAL primary key,
	ProductID int -- идентификатор продукта
);

CREATE TABLE IF NOT EXISTS Customers( --информация о клиентах
	id SERIAL primary key,
	FirstName varchar (255),
	LasttName varchar (255),
	Email varchar (255)
);

CREATE TABLE IF NOT EXISTS Details( --детали заказа
	id SERIAL primary key,
	Quantity int, --колво продуктов в заказе
	UnitPrice decimal (10,2) -- цена за ед. продукта 
);

CREATE TABLE IF NOT EXISTS OrderDetail( --связка	
	Order_id SERIAL primary key,
	Details_id bigint,
	foreign key (Details_id)references Details (id) on delete cascade,
	Product_id bigint,
	foreign key (Product_id)references Products (id) on delete cascade
);

CREATE TABLE IF NOT EXISTS Orders( --инфа заказов	
	Orders_id SERIAL primary key,
	OrderDate date , -- datetime дата и время создания заказа
	TotalAmount decimal(10,2), -- общая сумма заказа
	Customers_id bigint,
	foreign key (Customers_id)references Customers (id) on delete cascade,
	Details_id bigint,  -- 
	foreign key (Details_id)references Details (id) on delete cascade
);
