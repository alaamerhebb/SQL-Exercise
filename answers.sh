# 1. Get all the names of students in the database
  select name from students 

# 2. Get all the data of students above 30 years old
  select * from students WHERE Age>30

# 3.Get the names of the females who are 30 years old
  select name from students WHERE Gender="F" and Age=30

# 4. Get the number of Points of Alex 
  select Points from students where name="Alex"

# 5.Add yourself as a new student (your name, your age...)
  insert into students (name,age,gender,points) values ('alaa','22','m','600');

# 6. Increase the points of Basma because she solved a new exercise.
  update students
  set points='400'
  where name='Basma';

# 7. Decrease the points of Alex because he's late today.
  update students
  set points='150'
  where name='Alex';

# Creating Table:

# . Create a table graduates:

  CREATE TABLE Graduates (
     ID Integer Not Null Primary key AUTOINCREMENT,
	   Name Text Not Null Unique,
	   Age Integer,
	   Gender Text,
     Points Integer,
     Graduation Text
	 );

# .Copy Layal's data from students to graduates:

    INSERT INTO Graduates (Name, Age, Gender, Points)
    SELECT Name, Age, Gender, Points FROM students
    WHERE ID=4;    

# .Add the graduation date previously mentioned to Layal's record in graduates:

    update Graduates
    set Graduation='2018-09-08'
    where ID='9';

# .Remove Layal's record from students:

    DELETE FROM students WHERE ID='4'


# Joins:

# 1.Produce a table that contains, for each employee, his/her name, company name, and company date.

    SELECT employees.Name, employees.Company, companies.Date 
    FROM employees
    INNER JOIN companies ON companies.Name = employees.Company;

# 2.Find the name of employees that work in companies made before 2000.
  
    SELECT employees.Name
    FROM employees
    INNER JOIN companies ON companies.Name = employees.Company
    WHERE companies.Date < 2000;

# 3.Find the name of company that has a graphic designer.

    SELECT companies.Name
    FROM employees
    INNER JOIN companies ON companies.Name = employees.Company
    WHERE employees.Role = 'Graphic Designer';


# Count & Filter:

# 1.Find the person with the highest number of points in students

   SELECT Name From Students WHERE Points = (SELECT MAX(Points) FROM Students)


# 2.Find the average of points in students

   SELECT AVG(points) from students


# 3.Find the number of students that have 500 points

   SELECT COUNT(name) FROM students WHERE Points = 500


# 4.Find the names of students that contains 's'

   SELECT Name FROM students WHERE Name LIKE '%s%'


# 5.Find all students based on the decreasing order of their points

   SELECT * FROM students ORDER by  Points DESC