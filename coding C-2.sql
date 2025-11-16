create database BookStore;
use BookStore;
-- PRIMARY KEY --
create table BOOKS (
Book_ID int primary key,
Book_name varchar(100),
Author varchar(100),
Publisher_name varchar(100),
price decimal (10,2)
);
-- FOREIGN KEY --
create table ORDERS (
customer_name varchar(100),
Order_ID int,
Book_ID int,
Order_date date,
Quantity int,
Total_amount int,
Order_status varchar(50),
foreign key (book_id) references books(book_id)
);

select * from books;
select * from orders;

-- add column --
alter table books add column ISBN int unique;
-- delete --
delete from orders where book_id =1001;
-- truncate --
truncate table orders;