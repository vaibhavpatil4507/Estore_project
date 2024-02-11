create database Estore;
use Estore;

create table Category
(
category_id int primary key auto_increment,
category_name nvarchar(20),
image nvarchar(500),
Product_discription varchar(300)

);

create table Registration
(
R_id int primary key auto_increment,
Fname varchar(50),
address varchar(100),
contact bigint(10),
username nvarchar(50),
password nvarchar(50),
rpassword nvarchar(50),
gender varchar(50)

);


create table Add_subcategory
(
subcategory_id int primary key auto_increment,
category_name nvarchar(50),
subcategory_name nvarchar(50),
image nvarchar(500),
Product_discription varchar(100)
);

drop table Add_subcategory;

create table product_details
(
product_id int primary key auto_increment,
category_name varchar(100),
sub_category_name varchar(100),
product_image nvarchar(500),
product_name varchar(50),
discription varchar(200),
price int


);




create table booking
(
booking_id int primary key auto_increment,
username nvarchar(50),
contact_no bigint(10),
product_name varchar(400),
date date,
quantity int(100),
price int,
Tprice int
);

drop table booking;

create table cancel_booking
(
booking_id int primary key auto_increment,
username nvarchar(100),
date date,
contact_no bigint(10),
discription nvarchar(100)
);

create table complaint
(
custumer_id int primary key auto_increment,
username varchar(100),
email nvarchar(30),
contact_no bigint(10),
disription varchar(200)

);

create table feedback
(
custumer_id int primary key auto_increment,
username varchar(100),
email nvarchar(30),
contact_no bigint(10),
feedback varchar(200)

);

create table payment
(
payment_id int primary key auto_increment,
Card_number bigint(10),
Card_Holder_Name varchar(20),
Expiry_Date date,
CVV int,
Amount int

);