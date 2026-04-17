create database ShopManager;
use ShopManager;

create table Categories (
	category_id int primary key auto_increment,
    category_name varchar(30) not null
);

create table Products (
	product_id int primary key auto_increment,
    product_name varchar(50) not null,
    price decimal(18,4),
    stock int default  0,
    foreign key (category_id) references Categories (category_id)
);

insert into Categories (category_name)
values 
	('Điện tử'),
    ('Thời trang');
    
insert into Products (product_name, price, stock)
values 
	('iPhone 15', 25000000, 10),
    ('Samsung S23', 20000000 , 5),
    ('Áo sơ mi nam', 500000 , 50),
    ('Giày thể thao', 1200000 ,20);
    
update Products
set price = 26000000
where product_name = 'iPhone 15';

update Products
set stock = stock + 10
where category_id = 1;

delete from Products
where product_id = 4;

delete from Products
where price < 1000000;

select * from Products;
select * from Products
where stock > 15;

