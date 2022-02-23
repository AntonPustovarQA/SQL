-- HW_2_SQL_Pustovar_Anton

-- Таблица employees


-- 1.	Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
id serial primary key,
employee_name varchar (50) not null
);

-- select * from employees;

-- 2.	Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
	values ('Anton'),
		   ('Ivan'),
		   ('Inna'),
		   ('Misha'),
		   ('Nikolay'),
		   ('Kirill'),
		   ('Anna'),
		   ('Dima'),
		   ('Vladimir'),
		   ('Liliya'),
		   ('Luidmila'),
		   ('Yaroslav'),
		   ('Svyatoslav'),
		   ('Pawel'),
		   ('Sergei'),
		   ('Svetlana'),
		   ('Lesya'),
		   ('Marina'),
		   ('Angela'),
		   ('Vadim'),
		   ('Valentina'),
		   ('Ruslan'),
		   ('Tom'),
		   ('Mikle'),
		   ('Suzi'),
		   ('Petro'),
		   ('Kolya'),
		   ('Oleg'),
		   ('Kiy'), 
		   ('Horiv'),
		   ('Vova'),
		   ('Scar'),
		   ('Mila'),
		   ('Luk'),
		   ('Ben'),
		   ('Tolik'),
		   ('Ksusha'),
		   ('Viktor'),
		   ('Namik'),
		   ('Ismail'),
		   ('Kostik'),
		   ('Luba'),
		   ('Vera'),
		   ('Nadejda'),
		   ('Paramon'),
		   ('Vasja'),
		   ('Irina'),
		   ('Margo'),
		   ('Olya'),
		   ('Sanek'),
		   ('Alexsandra'),
		   ('Alex'),
		   ('Mao'),
		   ('Karl'),
		   ('Tereza'),
		   ('Viktoriya'),
		   ('Serena'),
		   ('Venus'),
		   ('Martina'), 
		   ('Martin'),  
		   ('Marat'),
		   ('Tigran'),
		   ('Nana'),
		   ('Vahtang'),
		   ('Bigo'),
		   ('Karen'),
		   ('Givi'),
		   ('Jerry'),
		   ('Gasan'), 
		   ('Lexa');
		   
select * from employees;

-- Таблица salary

-- 3.	Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary(
id serial primary key,
monthly_salary int not null
); 

-- select * from salary;

--4.	Наполнить таблицу salary 16 строками:

insert into salary (monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
      
select * from salary;

-- Таблица employee_salary

-- 5.	Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
   id serial primary key,
   employee_id int unique not null,
   salary_id int not null
);

-- select * from employee_salary;

-- 6.	Наполнить таблицу employee_salary 40 строками:
-- в 10 строках из 40 вставить несуществующие employee_id

insert into employee_salary (id, employee_id, salary_id)
values (1, 1, 11),
       (2, 66, 7),
       (3, 14, 9),
       (4, 3, 3),
       (5, 9, 6),
       (6, 70, 16),
       (7, 33, 14),
       (8, 15, 12),
       (9, 67, 7),
       (10, 12, 4),
       (11, 72, 7),
       (12, 95, 4),
       (13, 88, 8),
       (14, 92, 1),
       (15, 101, 2),
       (16, 96, 3),
       (17, 99, 4),
       (18, 102, 14),
       (19, 74, 6),
       (20, 110, 11),
       (21, 65, 13),
       (22, 28, 16),
       (23, 41, 8),
       (24, 39, 1),
       (25, 57, 10),
       (26, 58, 12),
       (27, 27, 4),
       (28, 2, 2),
       (29, 60, 7),
       (30, 59, 14),
       (31, 68, 5),
       (32, 18, 6),
       (33, 21, 2),
       (34, 32, 3),
       (35, 44, 6),
       (36, 55, 11),
       (37, 69, 14),
       (38, 49, 15),
       (39, 50, 7),
       (40, 5, 11);
      
Таблица roles


-- 7.	Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles(
id serial primary key,
role_name int unique not null
);

 -- select * from roles;

-- 8.	Поменять тип столба role_name с int на varchar(30)

alter table roles 
alter column role_name type varchar(30) using role_name::varchar(30);

-- 9.	Наполнить таблицу roles 20 строками:

insert into roles (role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
       
-- Таблица roles_employee

-- 10.	Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

select * from roles_employee;

-- 11.	Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id, role_id)
values (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 1),
       (14, 2),
       (15, 3),
       (16, 4),
       (17, 5),
       (18, 6),
       (19, 7),
       (20, 8),
       (21, 9),
       (22, 10),
       (23, 11),
       (24, 12),
       (25, 13),
       (26, 14),
       (27, 15),
       (28, 15),
       (29, 15),
       (30, 16),
       (31, 12),
       (32, 7),
       (33, 15),
       (34, 5),
       (35, 11),
       (36, 6),
       (37, 8),
       (38, 10),
       (39, 1),
       (40, 9);
       
      


