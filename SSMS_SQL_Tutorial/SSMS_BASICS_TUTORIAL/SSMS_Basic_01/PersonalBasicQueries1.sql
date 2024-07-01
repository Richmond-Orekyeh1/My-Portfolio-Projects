 CREATE TABLE SQLTutorial.dbo.EmployeeDetails
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)

CREATE TABLE SQLTutorial.dbo.EmployeeSalarys
(EmployeeID int,
JobTitle varchar(50),
Salary int)


INSERT INTO SQLTutorial.dbo.EmployeeDetails VALUES
(1001, 'Jame', 'Roland', 30, 'Male'),
(1002, 'Mark', 'Solomon', 30, 'Male'),
(1003, 'David', 'Agor', 42, 'Male'),
(1004, 'Joy', 'Michael', 47, 'Female'),
(1005, 'Richard', 'Osemudiamen', 27, 'Male'),
(1006, 'Ruth', 'Ebuka', 42, 'Female'),
(1007, 'Faith', 'Olu', 50, 'Female'),
(1008, 'Abel', 'Daniel', 33, 'Male'),
(1009, 'Chinedu', 'Chukwuma', 30, 'Male'),
(1010, 'Olsegun', 'Oluloya', 55, 'Male'),
(1011, 'Ayomide', 'Adebayo', 32, 'Female'),
(1012, 'Rose', 'Olawale', 57, 'Female'),
(1013, 'Ifeoma', 'Emenike', 32, 'Female'),
(1014, 'Yunusa', 'Mohammed', 56, 'Male'),
(1015, 'Musa', 'Abubakar', 55, 'Male'),
(1016, 'Matta', 'Ebuka', 30, 'Female'),
(1017, 'Matthew', 'Chidi', 29, 'Male'),
(1018, 'Sarah', 'Chukwudi', 23, 'Female'),
(1019, 'Richmond', 'Orekyeh', 27, 'Male'),
(1020, 'Simon', 'Orekyeh', 33, 'Male'),
(1021, 'Simon', 'Rodes', 43, 'Male'),
(1022, 'Sim', 'Carter', 33, 'Male'),
(1023, 'Mark', 'Anthony', 40, 'Male'),
(1024, 'Samuel', 'Robben', 45, 'Male')



INSERT INTO SQLTutorial.dbo.EmployeeSalarys VALUES
(1001, 'Cashier', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 44000),
(1004, 'Accountant', 47000),
(1005, 'HR Manager', 53000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 42000),
(1008, 'Cashier', 39000),
(1009, 'Accountant', 48000),
(1010, 'Salesman', 45000),
(1011, 'Assistant Manager', 50000),
(1012, 'Cashier', 42000),
(1013, 'cleaner', 29000),
(1014, 'Manager', 55000),
(1015, 'Salesman', 46000),
(1016, 'Ast.Reg Manager', 60000),
(1017, 'Cashier', 47000),
(1018, 'HR Ast. Manager', 51000),
(1019, 'Managing Director', 70000),
(1020, 'General Manager', 68000)
