create database Souq
use Souq

create table customer 
(
Customer_id int primary key,
Customer_Email nvarchar(50),
FirstName nvarchar(50),
LastName nvarchar(50),
Password nvarchar(50),
address nvarchar(Max),
PostCode nvarchar(10),
City nvarchar(50),
Phone nvarchar(20),
)
insert into customer Values (1,'NadaAyman@gamil.com','Nada' , 'Ayman' , '0123456', 'next to the garden','445165','Shubrakhit', '01026325578' )
select * from customer

create table Order_Tbl 
(
Order_id nvarchar(50) primary key,
Order_No int,
Order_Date datetime,
Order_Total int,
Customer_id int,
Shipping_Date datetime,
Is_Delivered nvarchar(10)
)
insert into Order_Tbl Values ('device', 30 , 1/4 , 5000 , 1 , 5/4 , 'Yes')
select * from Order_Tbl
delete from Order_Tbl where Order_No > 12 
select * from Order_Tbl 
update Order_Tbl SET Order_id = 'Tv' where Order_Total = 350
select * from Order_Tbl


create table Order_Details 
(
Order_Details_id int primary key,
Product_id int,
Product_Qty int,
Product_price int,
Order_id nvarchar(50),
subtotal int,
)


create table Category 
(
Category_id int primary key,
Category_Name nvarchar(50),
Caregory_image nvarchar(50),
Category_description nvarchar(Max),
)


create table products 
(
Product_id int primary key,
Product_Name nvarchar(50), 
Product_Desc nvarchar(50),
Image1 nvarchar(50),
Image2 nvarchar(50),
Image3 nvarchar(50),
Price int,
Stock int,
Category_id int,
)
