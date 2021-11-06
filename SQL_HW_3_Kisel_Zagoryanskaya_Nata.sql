 --1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select e.employee_name, es.salary_id, s.monthly_salary 
FROM employees e 
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id 

 --2. ������� ���� ���������� � ������� �� ������ 2000.
select e.employee_name, s.monthly_salary 
FROM employees e
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id 
where monthly_salary < 2000

 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select s.monthly_salary, es.employee_id, e.employee_name
FROM salary s
join employee_salary es on  s.id = es.salary_id 
left join employees e on e.id = es.employee_id
where employee_name isnull 

--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select s.monthly_salary, es.employee_id, e.employee_name
FROM salary s
join employee_salary es on  s.id = es.salary_id 
left join employees e on e.id = es.employee_id
where employee_name isnull and monthly_salary < 2000

--5. ����� ���� ���������� ���� �� ��������� ��.
select e.employee_name, s.monthly_salary
from employees e
left join employee_salary es on e.id = es.employee_id
left join salary s on s.id = es.salary_id
where monthly_salary isnull 

 --6. ������� ���� ���������� � ���������� �� ���������.
select e.employee_name, r.role_name 
from employees e
left join roles_employee re on e.id = re.employee_id
left join roles r on re.role_id = r.id

 --7. ������� ����� � ��������� ������ Java �������������.
 select e.employee_name, r.role_name 
from employees e
join roles_employee re on e.id = re.employee_id
join roles r on re.role_id = r.id
where role_name like '%Java%'

 --8. ������� ����� � ��������� ������ Python �������������.
 SELECT e.employee_name, r.role_name 
 FROM employees e
 JOIN roles_employee re ON re.employee_id = e.id
 join roles r on re.role_id = r.id 
 where role_name like '%Python%'
 
 --9. ������� ����� � ��������� ���� QA ���������.
 SELECT e.employee_name, r.role_name 
 FROM employees e
 JOIN roles_employee re ON re.employee_id = e.id
 join roles r on re.role_id = r.id 
 where role_name like '%QA%'
  
 --10. ������� ����� � ��������� ������ QA ���������.
 SELECT e.employee_name, r.role_name
 FROM employees e
 JOIN roles_employee re ON re.employee_id = e.id
 join roles r on re.role_id = r.id 
 where role_name like '%QA%' and role_name not like '%Automation%'
 
 --11. ������� ����� � ��������� ��������������� QA
 SELECT e.employee_name, r.role_name --roles_employee.role_id
 FROM employees e
 JOIN roles_employee re ON re.employee_id = e.id
 join roles r on re.role_id = r.id 
 where role_name like '%Automation%'
 
 --12. ������� ����� � �������� Junior ������������
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where role_name like '%Junior%'
 
 --13. ������� ����� � �������� Middle ������������
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where role_name like '%Middle%'
 
  --14. ������� ����� � �������� Senior ������������
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where role_name like '%Senior%'
 
 --15. ������� �������� Java �������������
 select r.role_name, s.monthly_salary 
 from roles r
 join roles_employee re on r.id = re.role_id 
 join employee_salary es on re.employee_id = es.employee_id 
 join salary s on es.salary_id = s.id
 where role_name like '%Java %'
 
 --16. ������� �������� Python �������������
 select r.role_name, s.monthly_salary 
 from roles r
 join roles_employee re on r.id = re.role_id 
 join employee_salary es on re.employee_id = es.employee_id 
 join salary s on es.salary_id = s.id
 where role_name like '%Python%'
 
 --17. ������� ����� � �������� Junior Python �������������
select e.employee_name, s.monthly_salary, r.role_name
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where role_name like '%Junior%' and role_name like '%Python%'
 
 --18. ������� ����� � �������� Middle JS �������������
select e.employee_name, s.monthly_salary, r.role_name
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where role_name like '%Middle%' and role_name like '%JavaScript%'
 
 --19. ������� ����� � �������� Senior Java �������������
select e.employee_name, s.monthly_salary, r.role_name
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where role_name like '%Senior%' and role_name like '%Java%'
 
 --20. ������� �������� Junior QA ���������
 select r.role_name, s.monthly_salary 
 from roles r
 join roles_employee re on r.id = re.role_id 
 join employee_salary es on re.employee_id = es.employee_id 
 join salary s on es.salary_id = s.id
 where role_name like '%QA%' and role_name like '%Junior%'
 
 --21. ������� ������� �������� ���� Junior ������������
 SELECT AVG(monthly_salary)
 FROM salary s
 join employee_salary es on s.id = es.salary_id
 join roles_employee re on es.employee_id = re.employee_id 
 join roles r on re.role_id = r.id 
 WHERE role_name like '%Junior%';
 
 --22. ������� ����� ������� JS �������������
SELECT SUM(monthly_salary)
FROM salary s
join employee_salary es on s.id = es.salary_id 
join roles_employee re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id 
WHERE role_name like '%JavaScript%';

 --23. ������� ����������� �� QA ���������
SELECT MIN(monthly_salary)
FROM salary s
join employee_salary es on s.id = es.salary_id 
join roles_employee re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id
WHERE role_name like '%QA%';

 --24. ������� ������������ �� QA ���������
SELECT MAX(monthly_salary)
FROM salary s
join employee_salary es on s.id = es.salary_id 
join roles_employee re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id
WHERE role_name like '%QA%';

 --25. ������� ���������� QA ���������
SELECT COUNT(employee_name)
FROM employees e
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
WHERE role_name like '%QA%';

 --26. ������� ���������� Middle ������������.
SELECT COUNT(employee_name)
FROM employees e
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
WHERE role_name like '%Middle%';

 --27. ������� ���������� ������������� (� ���������� � ���)
SELECT COUNT(employee_name)
FROM employees e
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id
WHERE role_name like '%developer%';

 --28. ������� ���� (�����) �������� �������������.
SELECT SUM(monthly_salary)
FROM salary s
join employee_salary es on s.id = es.salary_id
join roles_employee re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id
WHERE role_name like '%developer%';

 --29. ������� �����, ��������� � �� ���� ������������ �� �����������
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
ORDER BY e.employee_name, r.role_name, s.monthly_salary;

 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where monthly_salary between 1700 and 2300
ORDER BY e.employee_name, r.role_name, s.monthly_salary;

 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where monthly_salary < 2300
ORDER BY e.employee_name, r.role_name, s.monthly_salary;

 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where monthly_salary in (1100, 1500, 2000)
ORDER BY e.employee_name, r.role_name, s.monthly_salary;
