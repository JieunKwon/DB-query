use sheridanusedcars;

/* SELECT */
select * 
from sheridanusedcars.car
where year < 2008;


Select * 
From sheridanusedcars.car
Where price >= 10000
Order by model asc;
 
 
Select * 
From sheridanusedcars.car
Where colour != 'White'
Order by model asc, price asc;

Select * 
From sheridanusedcars.car
Where colour = 'White' or colour = 'black'; 

Select * 
From sheridanusedcars.car
Where colour in ('White' , 'black'); 


Select * 
From sheridanusedcars.car
Where model = 'Civic' and price < 12000;

select * 
from sheridanusedcars.car
where NOT( year < 2008);
    
select * 
from sheridanusedcars.car
where  year >= 2008;
    
Select * 
From sheridanusedcars.car
Where NOT ( colour = 'silver' or colour = 'gray' ) 
    AND ( price >= 13000 AND price <= 16000);  


Select * 
From sheridanusedcars.car
Where NOT IN ( 'white' , 'black') 
AND (price BETWEEN 13000 AND 16000);  


/* Aggrigation */
select COUNT(carID) 
From sheridanusedcars.car
Where price >= 13000;


Select SUM(price) 
From sheridanusedcars.car
Where model = 'Civic';


Select colour, AVG(price) 
From sheridanusedcars.car
Where model = 'Civic'
Group by colour;


Select Max(Year) as Newest, Min(Year) as Oldest
From sheridanusedcars.car
Where model= 'Fusion';


/* INNER JOIN */
Select car.model, car.year, car.price, manufacturer.manufacturer
From sheridanusedcars.Car
INNER JOIN 
sheridanusedcars.manufacturer ON
(Car.manufacturerID = manufacturer.manufacturerID)
Where manufacturer = 'TOYOTA';


select sheridanusedcars.car.model, sheridanusedcars.car.year, sheridanusedcars.car.price
From sheridanusedcars.car 
INNER JOIN 
sheridanusedcars.manufacturer ON
	 sheridanusedcars.car.manufacturerID = sheridanusedcars.manuracturer.manufacturerID 
Where manufacturer = 'TOYOTA';


Select car.model, car.year, car.price
from car 
INNER JOIN manufacturer ON
     manufacturer.manufacturerID = car.manufacturerID
Where manufacturer.manufacturer in ('Nissan','Honda','Hyundai');


Select manufacturer.manufacturer, car.model, car.year, car.colour 
from car 
INNER JOIN manufacturer ON
 	manufacturer.manufacturerID = car.manufacturerID
Where manufacturer.manufacturer in ('Ford','Chevrolet');
    
    
Select manufacturer.manufacturer, car.model, car.price, car.colour 
from car 
INNER JOIN manufacturer ON
 	manufacturer.manufacturerID = car.manufacturerID
Where car.price > 14500;

