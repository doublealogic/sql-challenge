-- Creates Departments Table
CREATE TABLE "Departments" (
    "dept_no" VARCHAR(10) NOT NULL,
    "dept_name" VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY ("dept_no")
);

-- Creates Titles Table
CREATE TABLE "Titles" (
    "title_id" VARCHAR(10) NOT NULL,
    "title" VARCHAR(30) NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY ("title_id")
);

-- Creates Employees Table
CREATE TABLE "Employees" (
    "emp_no" INTEGER NOT NULL,
    "emp_title_id" VARCHAR(10) NOT NULL,
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR(20) NOT NULL,
    "last_name" VARCHAR(30) NOT NULL,
    "sex" CHAR NOT NULL,
    "hire_date" DATE NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY ("emp_no")
);

-- Connects Employees and Titles Tables via their title_ids
ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
	REFERENCES "Titles" ("title_id");

-- Creates Dept_Emp Table
CREATE TABLE "Dept_Emp" (
    "emp_no" INTEGER NOT NULL,
    "dept_no" VARCHAR(10) NOT NULL,
    CONSTRAINT "pk_Dept_Emp" PRIMARY KEY ("emp_no","dept_no")
);

-- Connects Dept_Emp and Employees Tables via the Employees' Employee number
ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_emp_no" FOREIGN KEY("emp_no")
	REFERENCES "Employees" ("emp_no");

-- Connects Dept_Emp and Departments Tables via the Departments' Department number
ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_dept_no" FOREIGN KEY("dept_no")
	REFERENCES "Departments" ("dept_no");
	
CREATE TABLE "Dept_Manager" (
    "dept_no" VARCHAR(10) NOT NULL,
    "emp_no" INTEGER NOT NULL,
    CONSTRAINT "pk_Dept_Manager" PRIMARY KEY ("dept_no","emp_no")
);

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_dept_no" FOREIGN KEY("dept_no")
	REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_emp_no" FOREIGN KEY("emp_no")
	REFERENCES "Employees" ("emp_no");
	
CREATE TABLE "Salaries" (
    "emp_no" INTEGER NOT NULL,
    "salary" INTEGER NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY ("emp_no","salary")
);

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
	REFERENCES "Employees" ("emp_no");