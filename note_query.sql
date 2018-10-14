/* DDL (Data Definition Language) */
• create db & table

DROP DATABASE IF EXISTS PUBLICLIBRARY;

CREATE DATABASE PUBLICLIBRARY;

USE PUBLICLIBRARY;

DROP TABLE IF EXISTS books;

CREATE TABLE books (
	bookcode int NOT NULL AUTO_INCREMENT,
	title varchar(50) NOT NULL,
	author varchar(25) NOT NULL,
	price decimal(7,2),
	type varchar(25),
	subject varchar(25),
    PRIMARY KEY (bookcode)
);

CREATE TABLE library (
	No int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	branchcode int NOT NULL,
	bookcode int NOT NULL,
	borrowdate date NOT NULL,
    	returndate date NOT NULL,
    	fineamount decimal(7,2),
    	Foreign KEY (bookcode) references books(bookcode)
);

ALTER TABLE library
ADD qty int;

/* DML (Data manupulation Language) */
Insert into books (title, author, price, type, subject)
values ('Servlets and JSP','Murach',40.75,'Technology','Software Engineering');

Insert into library ( branchcode, borrowdate, returndate, fineamount)
        values (1001, curdate(), adddate(curdate(), INTERVAL 21 DAY),0.00)
delete from books where subject = 'Software’;
select * from books where title like ‘%software%’

update library set returndate = DATE('2018-09-27')  
where branchcode=1144 and bookcode=1;

Select count(carID) 
From car
Where price > 13000

Select SUM(price) 
From car
Where colour in ('White', ‘black’);;

Select colour, AVG(price) 
From car
Where model = 'Civic'
Group by colour;

Select Max(Year) as Newest, Min(Year) as Oldest
From car
Where model= ‘Fusion’;


