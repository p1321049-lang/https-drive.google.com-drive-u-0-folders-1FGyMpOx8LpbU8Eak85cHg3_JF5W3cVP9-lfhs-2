create database Ecommerce;
use Ecommerce;

create table product_info (
product_id int primary key,
product_name varchar(100),
product_prize decimal (10,2)
);

insert into product_info (product_id, product_name, product_prize) values
(1, 'Smart_TV', 65000.00),
(2, 'Washing_Machine', 78000.00),
(3, 'Refrigerator', 85000.00),
(4, 'Flour_grinder', 16000.00),
(5, 'Air_conditioner', 40000.00);

create table Sales_info (
    sale_id INT PRIMARY KEY,
    product_id INT,
    Quantity INT,
    Total_Amount DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES product_info(product_id)
);

insert into Sales_info (sale_id, product_id, Quantity, Total_Amount) values
(1, 1, 1, 65000.00),
(2, 2, 1, 78000.00),
(3, 3, 1, 85000.00),
(4, 4, 1, 16000.00),
(5, 5, 1, 40000.00);

create table Employees (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(100),
    Department VARCHAR(50)
    );

INSERT INTO Employees (Emp_ID, Emp_Name, Department) VALUES
(1, 'Kumar', 'IT'),
(2, 'Priya', 'IT'),
(3, 'Joe', 'IT'),
(4, 'Jai', 'HR'),
(5, 'Rahul', 'IT'),
(6, 'Anu', 'HR'),
(7, 'Priya', 'IT'),
(8, 'Subu', 'IT'),
(9, 'Ashok', 'HR'),
(10, 'Siva', 'IT'),
(11, 'Betty', 'IT'),
(12, 'Shiny', 'IT'),
(13, 'Ramya', 'IT');

SELECT * FROM product_info ORDER BY product_prize DESC LIMIT 3;

SELECT COUNT(*) AS TotalSales, SUM(Total_Amount) AS TotalRevenue, AVG(Total_Amount) AS AvgSaleValue, 
MAX(Total_Amount) AS HighestSale, MIN(Total_Amount) AS LowestSale FROM Sales_info;

SELECT Department, COUNT(*) AS TotalEmployees FROM Employees GROUP BY Department HAVING COUNT(*) >=10;

select * from Employees;