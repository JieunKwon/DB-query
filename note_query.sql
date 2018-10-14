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



