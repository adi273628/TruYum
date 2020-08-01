create database TruYum
go

use TruYum
go

create table menu
(
	itemId int not null primary key,
	itemName varchar(30) not null,
	itemPrice float not null,
	checkStock varchar(10) not null,
	itemExpiry date not null,
	itemCategory varchar(30) not null,
	itemDeliveryStatus varchar(20) not null
)

create table admin
(
	adminId int primary key,
	adminName varchar(50)
)
create table customers
(
	customerId int primary key,
	customerName varchar(50)
)

create table cart
(
	itemId int,
	customerId int,
	foreign key (itemId) references  menu(itemId),
	foreign key (customerId) references customers(customerId)
)