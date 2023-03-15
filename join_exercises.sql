use employees;

select *
from dept_manager;


# problem 1
select departments.dept_name                                  as 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from dept_manager
         join employees on dept_manager.emp_no = employees.emp_no
         join departments on dept_manager.dept_no = departments.dept_no
where to_date = '9999-01-01'
order by dept_name;


# problem 2
select departments.dept_name                                  as 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from dept_manager
         join employees on dept_manager.emp_no = employees.emp_no
         join departments on dept_manager.dept_no = departments.dept_no
where to_date = '9999-01-01'
  AND gender = 'F'
order by dept_name;


# problem 3
select titles.title as title, count(titles.title) as Total
from titles
         join dept_emp on titles.emp_no = dept_emp.emp_no
         join departments on dept_emp.dept_no = departments.dept_no
where dept_name = 'Customer Service'
  and titles.to_date = '9999-01-01'
group by titles.title
order by total desc;


# problem 4
select departments.dept_name                                  as 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) as 'Department Manager',
       salaries.salary                                        as Salary
from dept_manager
         join employees on dept_manager.emp_no = employees.emp_no
         join departments on dept_manager.dept_no = departments.dept_no
         join salaries on salaries.emp_no = dept_manager.emp_no
where dept_manager.to_date = '9999-01-01'
  AND salaries.to_date = '9999-01-01'
order by dept_name;

# problem 5
select CONCAT(employee.first_name, ' ', employee.last_name) as 'Employer',
       departments.dept_name                                as 'Department',
       CONCAT(manger.first_name, ' ', manger.last_name)     as 'Manager',
       employee.emp_no
from employees employee
         join dept_emp on employee.emp_no = dept_emp.emp_no
         join departments on dept_emp.dept_no = departments.dept_no
         join dept_manager on departments.dept_no = dept_manager.dept_no
         join employees manger on dept_manager.emp_no = manger.emp_no
where dept_emp.to_date = '9999-01-01'
  and dept_manager.to_date = '9999-01-01'
order by departments.dept_name, employee.emp_no;