# Assignment 3: Human Resource database

## Instructions:

1. This case study can be completed in groups (four students per group).
2. Please submit source code and reports using. This report outlines the tasks you completed.

## Tasks

You will do this assignment  related to the human resource (HR) database. This case study requires you to use SQL Server. This database has seven tables such as jobs, regions, countries, locations, dependents, employees, and departments. The following database diagram illustrates the HR database:

https://github.com/drshahizan/learn-aspnet/blob/main/image/SQL-Sample-Database-Schema.png
Figure 1.1: Database Schema

The HR sample database has seven tables:

1. The employees table stores the data of employees.
2. The jobs table stores the job data including job title and salary range.
3. The departments table stores department data.
4. The dependents table stores the employee’s dependents.
5. The locations table stores the location of the departments of the company.
6. The countries table stores the data of countries where the company is doing business.
7. The regions table stores the data of regions such as Asia, Europe, America, and the Middle East and Africa. The countries are grouped into regions.
8. The following picture shows the table names and their records.

Table	Rows
employees	40
dependents	30
departments	11
jobs	11
locations	7
countries	25
regions	4
📌 Please download the SQL script for creates the HR database structure 💾 and the script allows you to insert data into the tables💾.

You are required to create a database named HR. After that, create a table as described. Then, enter the data (refer Figure 1.2 and 1.3).

abc
Figure 1.2: Database CaseStudy2

abc
Figure 1.3: Table employees

You are given the file CaseStudy2.sln to complete this case study. In this file, there is an image folder that contains the staff photo that will be used. Please refer to Figure 1.4. Please download the CaseStudy2.sln file 💾.

abc
Figure 1.4: Solution Explorer

## Task 1: SQL Question

Please create a file named frmSQL.aspx. This file will be used to answer SQL questions. You need to create the SQL syntax and after that, use the GridView to display the SQL execution data.

1. Sort the salary data in the employees table's salary column from high to low. The values in this data must be unique.
aaa
Figure 1.5: Solution Q1

2. Returns all rows in the employees table sorted by the first_name column. You must restrict to 5 data only.

3. Please merge the employees' and dependents' first and last names using the UNION operator. Be sure to sort the data by last name.

4. Identifies all employees with job ID 9 and salaries higher than 5,000.

5. Please answer this question using the employees table and the CASE expression. If the salary is less than 3000, the CASE expression returns “Low”. If the salary is between 3000 and 5000, it returns “average”. When the salary is greater than 5000, the CASE expression returns “High”.

6. Use the LIKE operator to find employees whose last names contain the word an.

7. Identifies employees with salaries above $14,000 and sorts the result set based on the salary in descending order.

8. Find all employees whose salaries are equal to the average salary of their department.

9. Finds all employees whose salaries are greater than 5,000 and less than 7,000:

10. Get the employees who work in the department id 5 and with a salary not greater than 5000.

11. Calculates the sum of salary that the company pays for each department and selects only the departments with the sum of salary between 20000 and 30000.

12. Retrieves the employee who has the lowest salary in each department, then sorts these departments by the salary in ascending order.

## Task 2: Data Presentation Controls

ASP.NET provides a wide variety of rich controls that can be bound to data. Under the Data tab of the Visual Studio Toolbox, you can get several controls under the Data tab that could be used to display data from a data source, like a database or XML file. The standard ASP.NET data presentation controls are:

DataList
DetailsView
FormView
GridView
ListView
Task 2a: frmSearch1.aspx
You are required to create a file named frmSearch1.aspx. Please perform activities related to Presentation control data. Make a search using the first_name field as text input. Utilize the employees table. The GridView control is used to display the execution's outcomes.  You need to ensure that column name is a combination of first_name and last_name. Column experience is based on hire_date data. Also please change the format for the hire_date and salary fields. 
abc
Figure 1.6: Search name

### Task 2b:  frmSearch2.aspx
In this task, you are required to create a GridView control that allows users to edit or delete data. Apart from that, you are also allowed to select the desired data. Please refer to Figure 1.7.
abc
Figure 1.7: Search name

You are required to update the employee_id data numbered 101. Please change the staff picture and increase the salary to 20,000. Please refer to Figure 1.8.

abc
Figure 1.8: Update data

### Task 2c:  frmDataBound.aspx
You are required to create a staff directory by Department. Please use the DropDownList control to display the Department list. This list must be unique. When the name of the department has been selected, then the output results in the Gridview column. Please produce an interface like Figure 1.9 and Figure 1.10.

abc
Figure 1.9: List of Departments

abc
Figure 1.10: List of staff by Department
