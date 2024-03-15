-- Creating database named edu_institute if not exists

CREATE DATABASE IF NOT EXISTS edu_institute;

-- Using the database to create a table named students
USE edu_institute;
-- Create table students
CREATE TABLE IF NOT EXISTS students (
	student_id INT PRIMARY KEY,
	name VARCHAR(50),
	age INT,
	gender CHAR(1),
	enrollment_date DATE,
	program VARCHAR(50)
);
    
-- a query to find the total number of students and display it as Total Students.
SELECT COUNT(*) AS "Total Students" FROM students;

-- Function Usage
-- Function to display todays date in a column named Today's Date
SELECT CURRENT_DATE() AS "Today's Date";

--  a query to select the student names and their enrolment dates, but display the name column in uppercase
SELECT UPPER(name) AS name, enrollment_date FROM students;

-- a query to count the number of students in each program and display the results in descending order of count. Name the count column as Number of Students
SELECT program, COUNT(*) AS "Number of Students" 
FROM students
GROUP BY program
ORDER BY COUNT(*) DESC;

-- a query to count the number of students in each program and display the results in descending order of count. Name the count column as Number of Students
SELECT program, COUNT(*) AS "Number of Students" 
FROM students
GROUP BY program
ORDER BY COUNT(*) DESC;

-- a query to count the number of students in each program and display the results in descending order of count. Name the count column as Number of Students
SELECT program, COUNT(*) AS "Number of Students" 
FROM students
GROUP BY program
ORDER BY COUNT(*) DESC;

-- a query to find the youngest student's name and age.
SELECT name, age
FROM students
ORDER BY age ASC
LIMIT 1;
