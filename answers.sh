1. Get all the names of students in the database
  select name from students 

2. Get all the data of students above 30 years old
  select * from students WHERE Age>30

3.Get the names of the females who are 30 years old
  select name from students WHERE Gender="F" and Age=30

4. Get the number of Points of Alex 
  select Points from students where name="Alex"

5.Add yourself as a new student (your name, your age...)
  insert into students (name,age,gender,points) values ('alaa','22','m','600');

6. Increase the points of Basma because she solved a new exercise.
  update students
  set points='400'
  where name='Basma';

7. Decrease the points of Alex because he's late today.
  update students
  set points='150'
  where name='Alex';