create database ExerciseDb 

use ExerciseDb


create table Products
(PId int primary key,
PQ int,
PPrice float not null,
DiscountPercent DECIMAl(5,2),
ManufaucturingDate Date)
insert into Products values (11,10,20.99,10.00,'1-12-2023')
insert into Products values (22,8,15.90,10.00,'10-11-2023')
insert into Products values (33,4,45.78,10.00,'2-3-2023')
insert into Products values (44,15,70.09,10.00,'1-7-2023')
insert into Products values (55,12,235.59,10.00,'1-5-2023')
select*from Products

create FUNCTION
dbo.CalculateDiscountedValue(@price DECIMAL(10,2),@discount_percent DECIMAL(5,2))
returns DECIMAL(10,2)
AS
BEGIN
DECLARE @discounted_value DECIMAL(10,2)
SET@discounted_value=@price-(@price *@discount_price/100)
RETURN @discounted_value
END

SELECT PID,PPrice AS Price,
DiscountPercent aAS Discount,
dbo.CalculateDiscountedValue(PPrice,DiscountPercent)
AS
PriceAfterDiscount
From Products

 
