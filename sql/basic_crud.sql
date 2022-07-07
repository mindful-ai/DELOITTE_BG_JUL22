create database newdb;
use newdb;

show databases;

create table customers(
	id int not null,
    name varchar(20) not null,
    age int not null,
    address char(25),
    salary decimal(18, 2),
    primary key (id)
);

show tables;

insert into customers values (1, "Rajesh", 35, " J P Nagar, Bangalore", "1400000.00");
insert into customers (id, name, age, address, salary) values (2, "Ramesh", 34, "Jayanagar, Bangalore", "1500000.00");
insert into customers (id, name, age, address, salary) values (3, "Anil", 32, "Malleshwaram,  Bangalore", "1600000.00");
insert into customers (id, name, age, address, salary) values (4, "Sunil", 31, "Basavanagudi, Bangalore", "1700000.00");
insert into customers (id, name, age, address, salary) values (5, "Vinil", 30, "Rajajinagar, Bangalore", "1800000.00");
insert into customers (id, name, age) values (6, "Smitha", 29);

select * from customers;
select id, name, age from customers;

select * from customers where salary > 1600000;
select id, name, salary from customers where salary > 1600000;

select * from customers where salary > 1600000 and age > 30;
select * from customers where salary > 1600000 or age < 30;

update customers set address = "Vijayanagar, Bangalore", salary = "1650000.00" where id = 6;
select * from customers;

update customers set salary = "1800000.00" where id < 5;
select * from customers;

delete from customers where id = 5;
select * from customers;

drop table customers;
show tables;

drop database newdb;
