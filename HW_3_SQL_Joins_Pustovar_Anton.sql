SQL HomeWork 3. Joins

 -- 1. Display all employees whose salaries are in the database, along with their salaries.
 select employees.id, employees.employee_name, salary.monthly_salary from employees
 join employee_salary on employees.id = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id;
  
 -- 2. Display all employees whose salary is less than 2000.
 select employees.id, employees.employee_name, salary.monthly_salary from salary
 join employee_salary on salary.id = employee_salary.salary_id
 join employees on employee_salary.employee_id = employees.id
 where monthly_salary < 2000;

 -- 3. Display all salary items, but no employee has been assigned to them (there is a salary, but it is not clear who receives it).
 select role_name, salary.monthly_salary from roles
 join roles_employee on roles_employee.role_id = roles.id
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id;

 -- 4.  Display all salary positions less than 2000 but no employee has been assigned to them (there is a salary, but it is not clear who receives it).
 select role_name, salary.monthly_salary from roles
 join roles_employee on roles_employee.role_id = roles.id
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id
 where monthly_salary < 2000;

 -- 5. Find all employees who have not received a salary. 
 select employees.id, employees.employee_name, employee_salary.salary_id  from employees
 left join employee_salary on employees.id = employee_salary.employee_id 
 where employee_salary.salary_id is null;

 -- 6. Display all employees with their job titles.
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id;
 
 -- 7. Display names and titles of Java developers only.
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 where roles.role_name like '%Java developer%';
 
 -- 8. Display the names and titles of only Python developers.
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 where roles.role_name like '%Python developer%';
 
 -- 9. Display the names and position of all QA engineers.
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 where roles.role_name like '%QA%';
 
 -- 10. Display the names and position of manual QA engineers.
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 where roles.role_name like '%Manual QA%';
 
 -- 11. Display the names and position of QA automators.
 select employees.id, employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 where roles.role_name like '%Automation QA%';
 
-- 12. Display the names and salaries of junior specialists.
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Junior%';

 -- 13. Display names and salaries of Middle specialists.
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Middle%';
 
 -- 14. Display the names and salaries of senior specialists.
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Senior%';
 
 -- 15. Display salaries of Java developers.
 select roles.role_name, salary.monthly_salary from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Java developer%';

 -- 16. Display salaries of Python developers.
 select roles.role_name, salary.monthly_salary from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Python developer%'; 
 
 -- 17. Display Names and salaries of Junior Python developers.
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Junior Python developer%';
 
 -- 18. Display names and salaries of Middle JavaScript developers.
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Middle JavaScript developer%';

 -- 19. Display the names and salaries of Senior Java developers.
 select roles.role_name, salary.monthly_salary from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Senior Java developer%';

 -- 20. Display salaries of Junior QA engineers.
 select roles.role_name, salary.monthly_salary from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Junior% %QA%';

 -- 21. Display the average salary of all Junior specialists.
 select AVG (salary.monthly_salary) from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Junior%';

 -- 22. Display the amount of salaries of JavaScript developers.
 select SUM (salary.monthly_salary) from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%JavaScript%';
 
 -- 23. Display the minimum salary of QA engineers.
 select MIN (salary.monthly_salary) from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%QA%';

 -- 24. Display the maximum salary of QA engineers.
 select MAX (salary.monthly_salary) from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%QA%';
 
 -- 25. Display the number of QA engineers.
 select COUNT (roles.id) from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
 where roles.role_name like '%QA%';

 -- 26. Display the number of Middle specialists.
 select COUNT (roles.id) from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
 where roles.role_name like '%Middle%';

 -- 27. Display the number of developers.
 select COUNT (roles.id) from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
 where roles.role_name like '%developer%';

 -- 28. Display the payroll (amount) of the developers salaries.
 select SUM (salary.monthly_salary) from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%developer%';

-- 29. Display the names, positions and salaries of all specialists in ascending order.
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles_employee.role_id = roles.id 
join employee_salary on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id
order by salary.monthly_salary asc;
 
-- 30. Display the names, positions and salary of all specialists in ascending order from specialists whose salary is from 1700 to 2300. 
select employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on employee_salary.salary_id = salary.id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles_employee.role_id = roles.id 
where monthly_salary between 1700 and 2300
order by salary.monthly_salary asc;

-- 31. Display the names, positions and salary of all specialists in ascending order from specialists whose salary is less than 2300.
select employees.id, employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on employee_salary.salary_id = salary.id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles_employee.role_id = roles.id 
where monthly_salary < 2300
order by salary.monthly_salary asc;

-- 32. Display the names, positions and salary of all specialists in ascending order for specialists whose salary is equal to 1100, 1500, 2000. 
select employees.id, employees.employee_name, roles.role_name, salary.monthly_salary from salary
join employee_salary on employee_salary.salary_id = salary.id 
join employees on employee_salary.employee_id = employees.id 
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles_employee.role_id = roles.id 
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by salary.monthly_salary asc;
