insert into Products (ProductID) values
(12211323),
(21223845),
(34589873),
(45670902),
(56765431)
;

insert into Customers (FirstName, LasttName, Email) values
(
'Кузнецов',
'Егор',
'es.@blk.ru'
),
(
'Куйбышев',
'Платон',
'kl.@erk.ru'
),
(
'Владина',
'Галина',
'ytt.@urw.ru'
),
(
'Щевелева',
'Анна',
'ASH.@wert.ru'
),
(
'Иванов',
'Иван',
'II.@yras.ru'
)
;

insert into Details (Quantity, UnitPrice) values
(2, 235.50),
(1, 235.50),
(4, 1200.00),
(6, 1800.99),
(2, 123.80)
;

insert into OrderDetail (Order_id, Details_id, Product_id) values
(
'1',
'0001',
'01'
),
(
'2',
'0002',
'02'
),
(
'3',
'0003',
'03'
),
(
'4',
'0004',
'04'
),
(
'5',
'0005',
'05'
)
;

insert into Orders (Orders_id, OrderDate, TotalAmount, Customers_id, Details_id) values
('1', '2023-01-11', 471.00, 1, 1),
('2', '2023-03-25', 235.50, 2, 2),
('3','2023-03-26', 4800.00, 3, 3),
('4','2023-03-05', 10805.94, 4, 4),
('5','2023-03-27', 247.60, 5, 5)
;
