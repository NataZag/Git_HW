 --1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select e.employee_name, s.monthly_salary 
FROM employees e 
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id 

 --2. Вывести всех работников у которых ЗП меньше 2000.
select e.employee_name, s.monthly_salary 
FROM employees e
join employee_salary es on es.employee_id = e.id
join salary s on es.salary_id = s.id 
where monthly_salary < 2000

 --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select s.monthly_salary, es.employee_id, e.employee_name
FROM salary s
join employee_salary es on  s.id = es.salary_id 
left join employees e on e.id = es.employee_id
where employee_name isnull 

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select s.monthly_salary, es.employee_id, e.employee_name
FROM salary s
join employee_salary es on  s.id = es.salary_id 
left join employees e on e.id = es.employee_id
where employee_name isnull and monthly_salary < 2000

--5. Найти всех работников кому не начислена ЗП.
select e.employee_name, s.monthly_salary
from employees e
left join employee_salary es on e.id = es.employee_id
left join salary s on s.id = es.salary_id
where monthly_salary isnull 

 --6. Вывести всех работников с названиями их должности.
select e.employee_name, r.role_name 
from employees e
join roles_employee re on e.id = re.employee_id
join roles r on re.role_id = r.id

 --7. Вывести имена и должность только Java разработчиков.
 select e.employee_name, r.role_name 
from employees e
join roles_employee re on e.id = re.employee_id
join roles r on re.role_id = r.id
where role_name like '%Java %'

 --8. Вывести имена и должность только Python разработчиков.
 SELECT e.employee_name, r.role_name 
 FROM employees e
 JOIN roles_employee re ON re.employee_id = e.id
 join roles r on re.role_id = r.id 
 where role_name like '%Python%'
 
 --9. Вывести имена и должность всех QA инженеров.
 SELECT e.employee_name, r.role_name 
 FROM employees e
 JOIN roles_employee re ON re.employee_id = e.id
 join roles r on re.role_id = r.id 
 where role_name like '%QA%'
  
 --10. Вывести имена и должность ручных QA инженеров.
 SELECT e.employee_name, r.role_name
 FROM employees e
 JOIN roles_employee re ON re.employee_id = e.id
 join roles r on re.role_id = r.id 
 where role_name like '%QA%' and role_name not like '%Automation%'
 
 --11. Вывести имена и должность автоматизаторов QA
 SELECT e.employee_name, r.role_name --roles_employee.role_id
 FROM employees e
 JOIN roles_employee re ON re.employee_id = e.id
 join roles r on re.role_id = r.id 
 where role_name like '%Automation%'
 
 --12. Вывести имена и зарплаты Junior специалистов
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where role_name like '%Junior%'
 
 --13. Вывести имена и зарплаты Middle специалистов
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where role_name like '%Middle%'
 
  --14. Вывести имена и зарплаты Senior специалистов
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where role_name like '%Senior%'
 
 --15. Вывести зарплаты Java разработчиков
 select r.role_name, s.monthly_salary 
 from roles r
 join roles_employee re on r.id = re.role_id 
 join employee_salary es on re.employee_id = es.employee_id 
 join salary s on es.salary_id = s.id
 where role_name like '%Java %'
 
 --16. Вывести зарплаты Python разработчиков
 select r.role_name, s.monthly_salary 
 from roles r
 join roles_employee re on r.id = re.role_id 
 join employee_salary es on re.employee_id = es.employee_id 
 join salary s on es.salary_id = s.id
 where role_name like '%Python%'
 
 --17. Вывести имена и зарплаты Junior Python разработчиков
select e.employee_name, s.monthly_salary, r.role_name
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where role_name like '%Junior%' and role_name like '%Python%'
 
 --18. Вывести имена и зарплаты Middle JS разработчиков
select e.employee_name, s.monthly_salary, r.role_name
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where role_name like '%Middle%' and role_name like '%JavaScript%'
 
 --19. Вывести имена и зарплаты Senior Java разработчиков
select e.employee_name, s.monthly_salary, r.role_name
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where role_name like '%Senior%' and role_name like '%Java %'
 
 --20. Вывести зарплаты Junior QA инженеров
 select r.role_name, s.monthly_salary 
 from roles r
 join roles_employee re on r.id = re.role_id 
 join employee_salary es on re.employee_id = es.employee_id 
 join salary s on es.salary_id = s.id
 where role_name like '%QA%' and role_name like '%Junior%'
 
 --21. Вывести среднюю зарплату всех Junior специалистов
 SELECT AVG(monthly_salary) as avg_salary
 FROM salary s
 join employee_salary es on s.id = es.salary_id
 join roles_employee re on es.employee_id = re.employee_id 
 join roles r on re.role_id = r.id 
 WHERE role_name like '%Junior%';
 
 --22. Вывести сумму зарплат JS разработчиков
SELECT SUM(monthly_salary)
FROM salary s
join employee_salary es on s.id = es.salary_id 
join roles_employee re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id 
WHERE role_name like '%JavaScript%';

 --23. Вывести минимальную ЗП QA инженеров
SELECT MIN(monthly_salary)
FROM salary s
join employee_salary es on s.id = es.salary_id 
join roles_employee re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id
WHERE role_name like '%QA%';

 --24. Вывести максимальную ЗП QA инженеров
SELECT MAX(monthly_salary)
FROM salary s
join employee_salary es on s.id = es.salary_id 
join roles_employee re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id
WHERE role_name like '%QA%';

 --25. Вывести количество QA инженеров
select count(r.role_name) as QA_Enginier
from roles r 
join roles_employee re on re.role_id = r.id
where r.role_name like '%QA engineer%';

 --26. Вывести количество Middle специалистов.
select count(r.role_name) as Middle
from roles r 
join roles_employee re on re.role_id = r.id 
where r.role_name like '%Middle%';

 --27. Вывести количество разработчиков (с зарплатами и без)
select count(r.role_name) as developers
from roles r 
join roles_employee re on re.role_id = r.id 
where r.role_name like '%developer%';

 --28. Вывести фонд (сумму) зарплаты разработчиков.
SELECT SUM(monthly_salary)
FROM salary s
join employee_salary es on s.id = es.salary_id
join roles_employee re on es.employee_id = re.employee_id 
join roles r on re.role_id = r.id
WHERE role_name like '%developer%';

--проверка на калькуляторе
 SELECT e.employee_name, r.role_name, s.monthly_salary 
 FROM employees e
 JOIN roles_employee re ON re.employee_id = e.id
 join roles r on re.role_id = r.id
 left join employee_salary es on e.id = es.employee_id
 left join salary s on es.salary_id = s.id 
 where role_name like '%developer%';


 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
ORDER BY e.employee_name, r.role_name, s.monthly_salary;

 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where monthly_salary between 1700 and 2300
ORDER BY e.employee_name, r.role_name, s.monthly_salary;

 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where monthly_salary < 2300
ORDER BY e.employee_name, r.role_name, s.monthly_salary;

 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary 
from employees e
join roles_employee re on e.id = re.employee_id
join employee_salary es on re.employee_id = es.employee_id 
join salary s on es.salary_id = s.id 
join roles r on re.role_id = r.id
where monthly_salary in (1100, 1500, 2000)
ORDER BY e.employee_name, r.role_name, s.monthly_salary;
