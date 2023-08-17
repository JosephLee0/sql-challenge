--Question 1
select e.emp_no as "employee number", e.last_name as "last name",e.first_name as "first name",e.sex,s.salary
from employees as e
join salaries as s
on e.emp_no=s.emp_no;

--Question 2
select first_name as "first name",last_name as "last name",hire_date as "hire date"
from employees
where extract(year from employees.hire ) ='1986';

--Question 3
select d.dept_no, de.dept_name, e.emp_no,e.last_name,e.first_name
from employees as e
join dept_manager as d
on e.emp_no=d.emp_no
join department as de
on d.dept_no=de.dept_no;

--Question 4
select d.dept_no, e.emp_no,e.last_name,e.first_name, de.dept_name
from employees as e
join dept_emp as d
on e.emp_no=d.emp_no
join department as de
on d.dept_no=de.dept_no;

--Question 5
select first_name,last_name,sex
from employees
where first_name='Hercules' and last_name like 'B%';

--Question 6
select emp_no, last_name,first_name 
from employees
where emp_no in (
	select emp_no
	from dept_emp
	where dept_no in (
		select dept_no
		from department
		where dept_name='Sales'
	)
);


--Question 7
select e.emp_no, e.last_name, e.first_name,de.dept_name
from employees as e
join dept_emp as d
on e.emp_no=d.emp_no
join department as de
on d.dept_no=de.dept_no
where dept_name in ('Sales','Development')

--Question 8
select last_name, count(*) as "frequency count"
from employees
group by last_name
order by "frequency count" desc;








