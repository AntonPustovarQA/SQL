SQL HomeWork 3. Joins

 -- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
 select employees.id, employees.employee_name, salary.monthly_salary from employees
 join employee_salary on employees.id = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id;
  
 -- 2. ������� ���� ���������� � ������� �� ������ 2000.
 select employees.id, employees.employee_name, salary.monthly_salary from salary
 join employee_salary on salary.id = employee_salary.salary_id
 join employees on employee_salary.employee_id = employees.id
 where monthly_salary < 2000;

 -- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
 select role_name, salary.monthly_salary from roles
 join roles_employee on roles_employee.role_id = roles.id
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id;

 -- 4. ������� ��� ���������� �������  ������ 2000, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
 select role_name, salary.monthly_salary from roles
 join roles_employee on roles_employee.role_id = roles.id
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id
 where monthly_salary < 2000;

 -- 5. ����� ���� ���������� ���� �� ��������� ��.
 select employees.id, employees.employee_name, employee_salary.salary_id  from employees
 left join employee_salary on employees.id = employee_salary.employee_id 
 where employee_salary.salary_id is null;

 -- 6. ������� ���� ���������� � ���������� �� ���������.
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id;
 
 -- 7. ������� ����� � ��������� ������ Java �������������.
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 where roles.role_name like '%Java developer%';
 
 -- 8. ������� ����� � ��������� ������ Python �������������.
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 where roles.role_name like '%Python developer%';
 
 -- 9. ������� ����� � ��������� ���� QA ���������.
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 where roles.role_name like '%QA%';
 
 -- 10. ������� ����� � ��������� ������ QA ���������.
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 where roles.role_name like '%Manual QA%';
 
 -- 11. ������� ����� � ��������� ��������������� QA
 select employees.employee_name, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 where roles.role_name like '%Automation QA%';
 
-- 12. ������� ����� � �������� Junior ������������
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Junior%';

 -- 13. ������� ����� � �������� Middle ������������
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Middle%';
 
 -- 14. ������� ����� � �������� Senior ������������
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Senior%';
 
 -- 15. ������� �������� Java �������������
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Java developer%';

 -- 16. ������� �������� Python �������������
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Python developer%'; 
 
 -- 17. ������� ����� � �������� Junior Python �������������
 select employees.employee_name, salary.monthly_salary, roles.role_name from roles
 join roles_employee on roles_employee.role_id = roles.id 
 join employees on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id
 join salary on salary.id = employee_salary.salary_id 
 where roles.role_name like '%Junior Python developer%';