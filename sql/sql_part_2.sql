create database newdb;
use newdb;

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

create table customers2(
	id int not null,
    name varchar(20) not null,
    salary decimal (18, 2),
    primary key (id)
);

/* Transfer data from customers to customers2 */
insert into customers2 (id, name, salary) select id, name, salary from customers where salary > 1200000;
select * from customers2;

/* like clause */
select * from customers where name like '%il';
select * from customers where name like '%il' or salary like '_40%';

/* using regular expressions */
select * from customers where name regexp '^(Ra).+(sh)';
select * from customers where name regexp '^(Ra).+(sh)|.+tha';

CREATE TABLE CUSTOMERS3(
   ID INT  NOT NULL,
   NAME  VARCHAR (20) NOT NULL,
   AGE   INT  NOT NULL,
   ADDRESS  CHAR (25) ,
   SALARY  DECIMAL (18, 2),       
   PRIMARY KEY (ID)
);

INSERT INTO CUSTOMERS3 (ID,NAME,AGE,ADDRESS,SALARY) VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00);
INSERT INTO CUSTOMERS3 (ID,NAME,AGE,ADDRESS,SALARY) VALUES (2, 'Khilan', 25, 'Delhi', 1500.00 );
INSERT INTO CUSTOMERS3 (ID,NAME,AGE,ADDRESS,SALARY) VALUES (3, 'Kaushik', 23, 'Kota', 2000.00 );
INSERT INTO CUSTOMERS3 (ID,NAME,AGE,ADDRESS,SALARY) VALUES (4, 'Chaitali', 25, 'Mumbai', 6500.00 );
INSERT INTO CUSTOMERS3 (ID,NAME,AGE,ADDRESS,SALARY) VALUES (5, 'Hardik', 27, 'Bhopal', 8500.00 );
INSERT INTO CUSTOMERS3 (ID,NAME,AGE,ADDRESS,SALARY) VALUES (6, 'Komal', 22, 'MP', 4500.00 );

INSERT INTO CUSTOMERS3 (ID,NAME,AGE,ADDRESS,SALARY) VALUES (7, 'Ramesh', 33, 'Bangalore', 2000.00);
INSERT INTO CUSTOMERS3 (ID,NAME,AGE,ADDRESS,SALARY) VALUES (8, 'Khilan', 23, 'Delhi', 1500.00 );
INSERT INTO CUSTOMERS3 (ID,NAME,AGE,ADDRESS,SALARY) VALUES (9, 'Kaushik', 23, 'Indore', 2000.00 );
INSERT INTO CUSTOMERS3 (ID,NAME,AGE,ADDRESS,SALARY) VALUES (10, 'Chaitali', 23, 'Mumbai', 6500.00 );
INSERT INTO CUSTOMERS3 (ID,NAME,AGE,ADDRESS,SALARY) VALUES (11, 'Hardik', 23, 'Hyderabad', 8500.00 );
INSERT INTO CUSTOMERS3 (ID,NAME,AGE,ADDRESS,SALARY) VALUES (12, 'Komal', 23, 'Chennai', 4500.00 );


/* sorting */

select * from customers3 order by name; /* observe the age column */
select * from customers3 order by name, age asc;
select id, name, age from customers3 where salary > 4000 order by name, age desc;

/* controlling the sorting outcomes */
select * from customers3
order by ( case address
			when 'delhi' then 1
            when 'bhopal' then 2
            else 100 end ) asc, address desc;
            
/* grouping (groupby) */
select address, sum(salary) from customers3 group by address;

/* eliminate duplicates */
select name, salary from customers3 order by name;
select distinct name, salary from customers3 order by name;

/* How to use internal functions */
select max(salary) from customers3;
select min(salary) from customers3;
select * from customers3 where salary = (select max(salary) from customers3);

