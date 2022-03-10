--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

--Наполнить таблицу employee 70 строками.

insert into employees(employee_name)
	values('Theresa Tanner'),
	('Alison Bunton'),
	('Malik Bisom'),
	('Joshua James'),
	('Lizabeth Corscadden'),
	('Scott Rasset'),
	('Brian Seymour'),
	('Barbara Yang'),
	('Phyllis Christian'),
	('Julie Dingman'),
	('Antonio Forman'),
	('Richard Slavick'),
	('Vern Colon'),
	('Brian Bigler'),
	('Gregory Heitzman'),
	('Melody Brand'),
	('Gary Simmons'),
	('John Burchard'),
	('Patrick Harms'),
	('Brandy Brown'),
	('Georgia Lee'),
	('Yolanda Traughber'),
	('Brett Macdonald'),
	('Theodore Fountain'),
	('Douglas Baker'),
	('Mark Martinez'),
	('Jose Rader'),
	('Abraham Sanmartin'),
	('Denise Sergent'),
	('Lilly Doney'),
	('Elizabeth Graham'),
	('Carolyn Rose'),
	('Geraldine Shannon'),
	('Antonio Dobbins'),
	('Margret Dobiesz'),
	('Kraig Zierenberg'),
	('Gordon Kelly'),
	('John Norris'),
	('Rebecca Chaves'),
	('Leonard Senegal'),
	('Margaret Ragsdale'),
	('Janice Ramirez'),
	('Maria Crossley'),
	('Claire Velez'),
	('Andy Morrical'),
	('Roger Radford'),
	('Lee Maack'),
	('Christopher Snow'),
	('Gary Eggimann'),
	('Angela Narcisse'),
	('Markita Thompson'),
	('Esther Tatel'),
	('Bryan Gray'),
	('Claude Gilchrest'),
	('John Miller'),
	('Jeanelle Conover'),
	('Erica Laferriere'),
	('Maria Marshall'),
	('Mark Christ'),
	('Jessica Griffin'),
	('Edward Joseph'),
	('Christene Purser'),
	('Deborah Lounsbury'),
	('Norman Horn'),
	('Jasmine Unruh'),
	('Ron Cheng'),
	('Maggie Smith'),
	('Pauline Rice'),
	('Katie Arsenault'),
	('Karen Fahie');

--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
);

--Наполнить таблицу salary 15 строками
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

--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
	);

--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
	values(5, 1),
	(8, 2),
	(10, 9),
	(11, 6),
	(13, 15),
	(14, 14),
	(15, 2),
	(19, 5),
	(20, 8),
	(23, 6),
	(30, 5),
	(31, 8),
	(32, 10),
	(33, 11),
	(34, 12),
	(35, 13),
	(36, 14),
	(37, 15),
	(38, 5),
	(39, 4),
	(40, 3),
	(41, 1),
	(42, 2),
	(43, 2),
	(44, 1),
	(45, 2),
	(46, 9),
	(47, 9),
	(48, 8),
	(49, 10),
	(85, 14),
	(77, 3),
	(78, 9),
	(94, 13),
	(95, 9),
	(96, 10),
	(97, 15),
	(98, 6),
	(99, 12),
	(72, 6);

--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
	
create table roles(
	id serial primary key,
	role_name int not null unique
	);

--Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);

--Наполнить таблицу roles 20 строками:

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

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id) references employees (id),
	foreign key (role_id) references roles (id)
);

--Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id, role_id)
	values(5, 17),
	(7, 1),
	(3, 8),
	(18, 11),
	(12, 13),
	(6, 5),
	(9, 1),
	(11, 20),
	(15, 2),
	(16, 3),
	(19, 7),
	(20, 9),
	(24, 13),
	(28, 16),
	(31, 4),
	(32, 17),
	(35, 18),
	(37, 9),
	(39, 10),
	(41, 16),
	(47, 1),
	(45, 20),
	(49, 9),
	(50, 5),
	(52, 9),
	(54, 3),
	(55, 8),
	(58, 12),
	(59, 13),
	(60, 16),
	(61, 9),
	(62, 1),
	(63, 8),
	(64, 3),
	(65, 11),
	(66, 16),
	(67, 14),
	(68, 16),
	(69, 1),
	(70, 14);
	


