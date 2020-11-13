CREATE TABLE "Departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY ("dept_no")
);

CREATE TABLE "Titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY ("title_id")
);

CREATE TABLE "Employees" (
    "emp_no" INTEGER   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" CHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY ("emp_no")
);

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Titles" ("title_id");