# SQL Challenge - Employee Database: A Mystery in Two Parts
## Background
In this repository, I was given several tasks that would use SQL in both PostgreSQL and 
Jupyter Notebook applications. Under the fictional scenario of me being hired as a new
data engineer at a company, I would be using Data Engineering and Data Analysis to help design 
the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions 
about the data.

### Setup
I first created an `EmployeeSQL` folder and placed a `Data` folder within. Inside the `Data` folder, 
I placed the CSV files. 

### Data Modeling
First, I inspected the CSVs and sketched out an ERD of the tables. That ERD was then exported 
as a PNG file and is located in the `EmployeeSQL` folder as `Data Modeling - ERD.png`

### Data Engineering
Using the information I had, I created a table scheme for each of the six CSV files I was provided 
using a series of primary keys, foreign keys and composite keys depending on what each table needed. 
Once that was complete, I imported the CSV files into their corresponding SQL tables.
The SQL file in which I created the tables is included in this repository in the `EmployeeSQL` folder as `Data_Engineering.sql`

### Data Analysis
Now that I had a completed database, I then did the following analysis:
1. Listed the following details of each employee: employee number, last name, first name, sex, and salary.

2. Listed first name, last name, and hire date for employees who were hired in 1986.

3. Listed the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. Listed the department of each employee with the following information: employee number, last name, first name, and department name.

5. Listed first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. Listed all employees in the Sales department, including their employee number, last name, first name, and department name.

7. Listed all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, listed the frequency count of employee last names, i.e., how many employees share each last name.
All of the above analysis is located in the `Data_Analysis.sql` file in the `EmployeeSQL` folder.

### Bonus Work
Upon examining the data, I came upon the suspicion that the data was fake. That this
was actually a test of my data engineering skills at this fictional company. To test
this theory, I then did the following visualization work to see if I was right:

1. Imported the SQL database into Pandas.
2. Create a histogram to visualize the most common salary ranges for employees.
3. Create a bar chart of average salary by title.

This is all contained in the `Bonus_Analysis.ipynb` file in the `EmployeeSQL` folder.
