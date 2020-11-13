-- Lists each employee's employee number, last name, first name, sex, and salary
SELECT public."Employees".emp_no,
	public."Employees".last_name,
	public."Employees".first_name,
	public."Employees".sex,
	public."Salaries".salary
FROM public."Employees"
INNER JOIN public."Salaries" ON
public."Employees".emp_no = public."Salaries".emp_no;

-- Lists first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM public."Employees"
WHERE CAST(hire_date AS text) LIKE '1986%';

-- Lists each department manager's department number, department name, the manager's employee number, last name, first name
SELECT public."Dept_Manager".dept_no,
	public."Departments".dept_name,
	public."Dept_Manager".emp_no,
	public."Employees".last_name,
	public."Employees".first_name
FROM public."Dept_Manager"
INNER JOIN public."Departments" ON
public."Dept_Manager".dept_no = public."Departments".dept_no
INNER JOIN public."Employees" ON
public."Dept_Manager".emp_no = public."Employees".emp_no;


	