-- Lists each employee's employee number, last name, first name, sex, and salary
SELECT public."Employees".emp_no,
	public."Employees".last_name,
	public."Employees".first_name,
	public."Employees".sex,
	public."Salaries".salary
FROM public."Employees"
INNER JOIN public."Salaries" ON
public."Employees".emp_no = public."Salaries".emp_no;

