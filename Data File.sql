use TruYum

insert into menu values
(1, 'Sandwich', 99.00, 'Yes',  '2017-03-15', 'Main Course', 'Yes'),
(2, 'Burger', 129.00, 'Yes',  '2017-12-23', 'Main Course', 'No'),
(3, 'Pizza', 149.00, 'Yes',  '2017-08-21', 'Main Course', 'No'),
(4, 'French Fries', 57.00, 'No',  '2017-07-02', 'Starters', 'Yes'),
(5, 'Chocolate Brownie', 32.00, 'Yes',  '2022-11-02', 'Dessert', 'Yes')

go

-- Menu List for Admin
select itemName as 'Name',itemPrice as 'Price', checkStock as 'Active', itemExpiry as 'Date of Launch', itemCategory as 'Category', itemDeliveryStatus as 'Free Delivery'  from menu;
go

-- Menu List for Customers
select itemName as 'Name', itemDeliveryStatus as 'Free Delivery', itemPrice as 'Price', itemCategory as 'Category' from menu;
go

-- Edit Menu Item
update menu
set 
itemPrice = 97.00,
itemExpiry = '2022-04-27'
where itemName = 'Sandwich'
go

-- Adding Amins
insert into admin
values
(1, 'Anu'),
(2, 'Praveen'),
(3, 'Manisha')

-- Displaying All Admins
select adminId as 'Admin ID', adminName as 'Admin Name' from admin;

-- Adding Customers
insert into customers
values
(1, 'KALYANI BHASIN'),
(2, 'LATA KUMARI'),
(3, 'MALINI V'),
(4, 'AMARDEEP GHOSH'),
(5, 'ANUPAMA TYAGI'),
(6, 'INDERJEET SINGH')
go

-- Displaying the List of Customers
select customerId as 'Customer ID', customerName as 'Customer Name' from customers
go


-- Adding Data in Customer Cart

insert into customerCart 
values
(4, 1), (2, 2), (3,3), (5,4),
(1, 4),(4,4)
(4, 1), (2, 6),
(3, 2),(5, 3),
(4, 1), (2, 5),
(1, 5), (4, 2)

go

-- Extracting the Cart Details 
select c.customerName as 'Customer Name', m.itemName as 'Item Name', m.itemDeliveryStatus as 'Free Delivery',  m.itemPrice as 'Price' from customerCart cc
inner join menu m
on cc.itemId = m.itemId
inner join customers c
on c.customerId = cc.customerId

go