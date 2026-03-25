create database company_01 ;
use company_01 ;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(30),
    City VARCHAR(30),
    HireDate DATE,
    Salary INT
);

INSERT INTO Employees (EmpID, EmpName, Department, City, HireDate, Salary) VALUES
(102, 'Rahul Mehta', 'Sales', 'Delhi', '2020-04-12', 55000),
(103, 'Priya Sharma', NULL, 'Mumbai', '2019-09-25', 62000),
(104, 'Aman Singh', NULL, 'Bengaluru', '2021-03-10', 72000),
(105, 'Neha Patel', 'Sales', 'Delhi', '2022-01-14', 48000),
(106, 'Karan Joshi', 'Marketing', 'Pune', '2018-07-22', 45000),
(107, 'Divya Nair', NULL, 'Chennai', '2019-12-11', 81000),
(108, 'Raj Kumar', NULL, 'Delhi', '2020-05-28', 60000),
(109, 'Simran Kaur', 'Finance', 'Mumbai', '2021-08-03', 58000),
(110, 'Arjun Reddy', NULL, 'Hyderabad', '2022-02-18', 70000),
(111, 'Anjali Das', 'Sales', 'Kolkata', '2023-01-15', 51000);

##Question 1 : Show employees working in either the ‘IT’ or ‘HR’ departments.
SELECT * FROM Employees
WHERE Department IN ('IT', 'HR');

##Question 2 : Retrieve employees whose department is in ‘Sales’, ‘IT’, or ‘Finance’

SELECT * FROM Employees
WHERE Department IN ('Sales', 'IT', 'Finance');

##Question 3 : Display employees whose salary is between ₹50,000 and ₹70,000
SELECT * FROM Employees
WHERE Salary BETWEEN 50000 AND 70000;

##Question 4 : List employees whose names start with the letter ‘A’
SELECT * FROM Employees
WHERE EmpName LIKE 'A%';

##Question 5 : Find employees whose names contain the substring ‘an’
SELECT * FROM Employees
WHERE EmpName LIKE '%an%';

##Question 6 : Show employees who are from ‘Delhi’ or ‘Mumbai’ and earn more than ₹55,000.
SELECT * FROM Employees
WHERE City IN ('Delhi', 'Mumbai') AND Salary > 55000;

##Question 7 : Display all employees except those from the ‘HR’ department
SELECT * FROM Employees
WHERE Department <> 'HR';

##Question 8 : Get all employees hired between 2019 and 2022, ordered by HireDate (oldest first)
SELECT * FROM Employees
WHERE HireDate BETWEEN '2019-01-01' AND '2022-12-31'
ORDER BY HireDate ASC;