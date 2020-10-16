Part 1 Basic Queries

SELECT * FROM student
 
 SELECT * FROM students
WHERE Age > 30;

SELECT * FROM students
WHERE Gender = "F" AND Age=30;

SELECT Points FROM students
WHERE Name = "Alex";

INSERT INTO students(Id, Name, Age, Gender, Points)
VALUES('8', 'Ali', '24', 'M', '200');

UPDATE students
SET Points = (points+50)
WHERE Name = "Basma";

UPDATE students
SET Points = (points-50)
WHERE Name = "Alex";


Part 2 Creating Table

CREATE TABLE "graduates" (
"Id" INTEGER NOT NULL ,
"Name" TEXT NOT NULL UNIQUE ,
"Age" INTEGER , 
"Gender" TEXT ,
"Points" INTEGER ,
"Graduation" TEXT ,
PRIMARY KEY ("Id" AUTOINCREMENT)
)

INSERT INTO graduates (Id, Name, Age, Gender, Points)
SELECT Id, Name, Age, Gender, Points FROM students 
WHERE name = "Layal";

UPDATE graduates
SET Graduation = "08/09/2018"
WHERE Name = "Layal";

DELETE FROM students WHERE Name = "Layal";


Part 3 Joins

SELECT employees.Name, employees.Company, companies.Date
FROM employees
JOIN companies ON employees.Company = companies.name;

SELECT employees.Name, employees.Company, companies.Date
FROM employees
JOIN companies ON employees.Company = companies.name AND Date<2000;

SELECT  employees.Company
FROM employees
 WHERE Role="Graphic Designer";
 
 
 Part 4 Counts and Filter
 
 SELECT name, max (Points) FROM students 
 
 SELECT avg (points) FROM students
 
 SELECT count(points) FROM students WHERE points=500
 
 SELECT name FROM students WHERE name like '%s%';
 
 
