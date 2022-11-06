--SQL_DDL
--Первая часть.

--Таблица employees

--1. Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name Varchar(50) not null
);

--2. Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
values ('Альбина'),
		('Владислава'),
		('Айлин'),
		('Евдокия'),
		('Марьям'),
		('Лейла'),
		('Мелисса'),
		('Амира'),
		('Оливия'),
		('Виталина'),
		('Станислава'),
		('Марьяна'),
		('Фатима'),
		('Влада'),
		('Дана'),
		('Мария'),
		('Анастасия'),
		('Виктория'),
		('София'),
		('Анна'),
		('Елизавета'),
		('Алиса'),
		('Дарья'),
		('Александра'),
		('Полина'),
		('Ксения'),
		('Варвара'),
		('Мария'),
		('Анастасия'),
		('Анна'),
		('Варвара'),
		('Виктория'),
		('Амелия'),
		('Камила'),
		('Евангелина'),
		('Александр'),
		('Михаил'),
		('Иван'),
		('Максим'),
		('Артём'),
		('Даниил'),
		('Дмитрий'),
		('Кирилл'),
		('Андрей'),
		('Егор'),
		('Илья'),
		('Алексей'),
		('Владимир'),
		('Матвей'),
		('Тимофей'),
		('Ярослав'),
		('Роман'),
		('Фёдор'),
		('Никита'),
		('Марк'),
		('Сергей'),
		('Николай'),
		('Владислав'),
		('Степан'),
		('Глеб'),
		('Лев'),
		('Павел'),
		('Евгений'),
		('Арсений'),
		('Константин'),
		('Георгий'),
		('Григорий'),
		('Тимур'),
		('Макар'),
		('Игорь');



select * from employees;

--Таблица salary
--
--3. Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
create table salary(
	id serial primary key,
	monthly_salary int not null
);

--4. Наполнить таблицу salary 16 строками:

insert into salary(monthly_salary)
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

--Таблица employee_salary
--
--5. Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null

create table employee_salary(
	id serial  primary key,
	employee_id int unique not null,
	salary_id int not null
);

select * from employee_salary;

--6. Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id,salary_id)
values (48,5),
		(19,11),
		(42,1),
		(64,2),
		(8,11),
		(24,13),
		(3,12),
		(58,3),
		(7,11),
		(27,13),
		(36,1),
		(44,2),
		(66,12),
		(45,5),
		(37,4),
		(12,6),
		(6,4),
		(32,15),
		(68,2),
		(62,14),
		(51,1),
		(29,12),
		(54,7),
		(25,14),
		(46,8),
		(35,2),
		(33,4),
		(61,3),
		(53,16),
		(2,3),
		(82,9),
		(86,12),
		(93,2),
		(89,5),
		(99,10),
		(78,7),
		(73,15),
		(91,13),
		(83,3),
		(84,5);

select * from employee_salary;

--Таблица roles
--
--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

create table roles(
	id serial  primary key,
	role_name int unique not null
);

select * from roles;

--Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);

select * from roles;
--Наполнить таблицу roles 20 строками:

insert into roles(role_name)
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

	
select * from roles;

--Таблица roles_employee
--
--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial  primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

select * from roles_employee;

--Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id,role_id)
values (48,8),
		(28,3),
		(37,7),
		(27,4),
		(67,4),
		(64,2),
		(8,10),
		(3,2),
		(58,11),
		(54,5),
		(17,19),
		(6,16),
		(5,18),
		(31,2),
		(11,19),
		(69,18),
		(55,7),
		(19,3),
		(47,8),
		(50,2),
		(2,6),
		(66,20),
		(1,6),
		(60,20),
		(21,10),
		(12,19),
		(24,10),
		(30,20),
		(25,20),
		(43,13),
		(13,2),
		(16,7),
		(39,8),
		(34,8),
		(32,12),
		(23,4),
		(65,2),
		(35,1),
		(26,12),
		(49,16);
	
select * from roles_employee;
