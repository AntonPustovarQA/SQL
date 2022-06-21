SQL HomeWork 3. Joins

 -- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 select employees.id, employees.employee_name, salary.monthly_salary from employees
 join employee_salary on employees.id = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id;
  
 -- 2. Вывести всех работников у которых ЗП меньше 2000.
 select employees.id, employees.employee_name, salary.monthly_salary from salary
 join employee_salary on salary.id = employee_salary.salary_id
 join employees on employee_salary.employee_id = employees.id
 where monthly_salary < 2000;

 -- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 select role_name, salary.monthly_salary from roles
 join roles_employee on roles_employee.role_id = roles.id
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id;

 -- 4. Вывести все зарплатные позиции  меньше 2000, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 select role_name, salary.monthly_salary from roles
 join roles_employee on roles_employee.role_id = roles.id
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id
 where monthly_salary < 2000;

 -- 5. Найти всех работников кому не начислена ЗП.
 select employees.id, employees.employee_name, employee_salary.salary_id  from employees
 left join employee_salary on employees.id = employee_salary.employee_id 
 where employee_salary.salary_id is null;

 -- 6. Вывести всех работников с названиями их должности.
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id;
 
 -- 7. Вывести имена и должность только Java разработчиков.
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 where roles.role_name like '%Java developer%';
 
 -- 8. Вывести имена и должность только Python разработчиков.
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 where roles.role_name like '%Python developer%';
 
 -- 9. Вывести имена и должность всех QA инженеров.
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 where roles.role_name like '%QA%';
 
 -- 10. Вывести имена и должность ручных QA инженеров.
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 where roles.role_name like '%Manual QA%';
 
 -- 11. Вывести имена и должность автоматизаторов QA
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 where roles.role_name like '%Automation QA%';
 
-- 12. Вывести имена и зарплаты Junior специалистов
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Junior%';

 -- 13. Вывести имена и зарплаты Middle специалистов
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Middle%';
 
 -- 14. Вывести имена и зарплаты Senior специалистов
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Senior%';
 
 -- 15. Вывести зарплаты Java разработчиков
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Java developer%';

 -- 16. Вывести зарплаты Python разработчиков
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Python developer%'; 
 
 -- 17. Вывести имена и зарплаты Junior Python разработчиков
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Junior Python developer%';