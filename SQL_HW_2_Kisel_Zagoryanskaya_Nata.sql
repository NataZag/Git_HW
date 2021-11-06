--������� employees

--������� ������� employees
-- -id. serial,  primary key,
-- -employee_name. Varchar(50), not null
--��������� ������� employee 70 ��������.
create table employees(
id serial primary key, 
employee_name Varchar(50) not null
);

insert into employees (id, employee_name)
values (default, '��� �������');

--������� salary

--������� ������� salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null
--��������� ������� salary 15 ��������: 1000 - 2500
create table salary(
id serial primary key, 
monthly_salary int not null
);

insert into employees (id, monthly_salary)
values (default, 1000);

--������� employee_salary

--������� ������� employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null
-- ��������� ������� employee_salary 40 ��������:
-- - � 10 ����� �� 40 �������� �������������� employee_id

create table employee_salary(
id serial primary key, 
employee_id int not null unique,
salary_id int not null
);

insert into employees (id, employee_id, salary_id)
values (default, 80, 1);

--������� roles

--������� ������� roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique
--�������� ��� ������ role_name � int �� varchar(30)
--��������� ������� roles 20 ��������: Junior Python developer...

create table roles(
id serial primary key, 
role_name int not null unique
);

alter table roles
alter column role_name type varchar(30)
using role_name::varchar(30);

insert into roles_employee (id, role_name)
values (default, Junior Python developer);

--������� roles_employee

--������� ������� roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
-- - role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
-- ��������� ������� roles_employee 40 ��������

create table roles_employee(
id serial primary key, 
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
 references employees(id),
foreign key (role_id)
 references roles (id)
);

insert into roles_employee (id, employee_id, role_id)
values (default, 32, 1);



select * from roles_employee;
