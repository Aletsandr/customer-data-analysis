SELECT *
FROM Orders
WHERE TotalAmount = (              			--Возвращает список клиентов с наибольшей общей
    SELECT max(TotalAmount)        			-- суммой заказов
    FROM Orders);

   
SELECT * FROM Orders ORDER BY TotalAmount desc;  	-- выводит список его заказов (номер заказа и общая сумма) в порядке убывания общей суммы заказов.


select avg(TotalAmount) from Orders e; 			-- получение средней суммы 


SELECT *						--Выводит только тех клиентов, у которых
FROM Orders						--общая сумма заказов превышает среднюю
WHERE TotalAmount > 3300            			--общую сумму заказов всех клиентов.
    