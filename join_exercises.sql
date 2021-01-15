
select * from dept_manager;

# Each Department with Current Dept. Manager
select d.dept_name as `Department Name`, concat(e.first_name, ' ', e.last_name) as `Department Manager`
from employees e
join dept_manager dm on e.emp_no = dm.emp_no
join departments d on dm.dept_no = d.dept_no
where to_date like '9999%'
order by `Department Name`;

# Each Department with a Female as Current Dept. Manager
select d.dept_name as `Department Name`, concat(e.first_name, ' ', e.last_name) as `Department Manager`
from employees e
join dept_manager dm on e.emp_no = dm.emp_no
join departments d on dm.dept_no = d.dept_no
where to_date like '9999%'
and gender = 'F'
order by `Department Name`;

# Current Number of each Title in Customer Service
select t.title as Title, count(t.title) as Count
from titles t
join dept_emp de on t.emp_no = de.emp_no
join departments d on d.dept_no = de.dept_no
where dept_name = 'Customer Service'
and de.to_date like '9999%'
and t.to_date like '9999%'
group by Title;

# Current Salary of Current Manager
select d.dept_name as `Department Name`,
       concat(e.first_name, ' ', e.last_name) as Name,
       s.salary as Salary
from employees e
join salaries s on e.emp_no = s.emp_no
join dept_manager dm on e.emp_no = dm.emp_no
join departments d on dm.dept_no = d.dept_no
where dm.to_date like '9999%'
and s.to_date like '9999%'
order by `Department Name`;

# Bonus: All Current Employees Details
select concat(e.first_name, ' ', e.last_name) as `Employee Name`,
       d.dept_name as `Department Name`,
       concat(m.first_name, ' ', m.last_name) as `Manager Name`
from employees e
join salaries s on e.emp_no = s.emp_no
join dept_emp de on e.emp_no = de.emp_no
join departments d on d.dept_no = de.dept_no
join dept_manager dm on d.dept_no = dm.dept_no
join employees m on m.emp_no = dm.emp_no
where s.to_date > now()
and de.to_date > now()
and dm.to_date > now()
order by `Department Name`, e.emp_no;








