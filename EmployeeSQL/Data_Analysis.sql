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

-- Lists each employee's employee number, last name, first name, and department name.
SELECT public."Employees".emp_no,
	public."Employees".last_name,
	public."Employees".first_name,
	public."Departments".dept_name
FROM public."Dept_Manager"
INNER JOIN public."Departments" ON
public."Dept_Manager".dept_no = public."Departments".dept_no
INNER JOIN public."Employees" ON
public."Dept_Manager".emp_no = public."Employees".emp_no;

-- Lists first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM public."Employees"
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Lists all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT public."Employees".emp_no,
	public."Employees".last_name,
	public."Employees".first_name,
	public."Departments".dept_name
FROM public."Dept_Emp"
INNER JOIN public."Departments" ON
public."Dept_Emp".dept_no = public."Departments".dept_no 
INNER JOIN public."Employees" ON
public."Dept_Emp".emp_no = public."Employees".emp_no
WHERE public."Dept_Emp".dept_no = 'd007'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT public."Employees".emp_no,
	public."Employees".last_name,
	public."Employees".first_name,
	public."Departments".dept_name
FROM public."Dept_Emp"
INNER JOIN public."Departments" ON
public."Dept_Emp".dept_no = public."Departments".dept_no
INNER JOIN public."Employees" ON
public."Dept_Emp".emp_no = public."Employees".emp_no
WHERE public."Dept_Emp".dept_no = 'd007'


UNION

SELECT public."Employees".emp_no,
	public."Employees".last_name,
	public."Employees".first_name,
	public."Departments".dept_name
FROM public."Dept_Emp"
INNER JOIN public."Departments" ON
public."Dept_Emp".dept_no = public."Departments".dept_no
INNER JOIN public."Employees" ON
public."Dept_Emp".emp_no = public."Employees".emp_no
WHERE public."Dept_Emp".dept_no = 'd005'

-- In descending order, lists the frequency count of employee last names, i.e., how many employees share each last name
SELECT last_name, COUNT(public."Employees".last_name) AS "Last_Name Frequency"
FROM public."Employees"
GROUP BY last_name
ORDER BY "Last_Name Frequency" DESC;
