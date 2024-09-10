## Part 1

### Question 1
SELECT name from country where continent = "South America";

### Question 2
select population from country where name = "Germany";

### Question 3
SELECT name from city where CountryCode = "JPN";

### Question 4
select name, population from country where continent = "Africa" order by population desc limit 3;

### Question 5
select name, LifeExpectancy from country where population > 1000000 or population < 5000000;

### Question 6
select country.name from country join countrylanguage on country.code = countrylanguage.CountryCode where countrylanguage.language = "French" and countrylanguage.IsOfficial;

### Question 7
select Album.Title from Album join Artist on Album.ArtistId = Artist.ArtistId where Artist.name = "AC/DC";

### Question 8
select FirstName, LastName, Email from Customer where Country = "Brazil";

### Question 9
select Name from Playlist;

### Question 10
Select count(Track.Name) from Track join Genre On Track.GenreID = Genre.GenreId where Genre.Name = "Rock";

### Question 11
SELECT FirstName, LastName FROM Employee WHERE ReportsTo = (SELECT EmployeeId FROM Employee WHERE FirstName = 'Nancy' AND LastName = 'Edwards');

### Question 12
select Customer.CustomerID, Customer.FirstName, Customer.LastName, SUM(Invoice.Total) from Customer JOIN Invoice on Customer.CustomerId = Invoice.CustomerId group by Customer.CustomerID;


##Part 2

### Question 1
# Using database ‘tfc5ca’

### Question 2
CREATE TABLE Products(
    Name VARCHAR(100),
    Item VARCHAR(100),
    Price REAL,
    PRIMARY KEY (Name)
    );

CREATE TABLE Employee(
    EmployeeID VARCHAR(50),
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Started VARCHAR(50),
    Experience REAL,
    PRIMARY KEY (EmployeeID)
    );

CREATE TABLE Customer(
    CustomerID VARCHAR(50),
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    ProductID VARCHAR(50),
    EmployeeID VARCHAR(50),
    Paid REAL,
    PRIMARY KEY (CustomerID)
    );

### Question 3
INSERT INTO Products(ProductID, Name, Item, Price)
VALUES (1, "Cinnamon Rolls", "Pastry", 6.00),
(2, "Bear Claws", "Pastry", 1.00),
(3, "Cream Horn", "Pastry", 3.25),
(4, "Cheese Straws", "Bread", 20.00),
(5, "Wheat Bread", "Bread", 3.75),
(6, "Carrot Cake", "Cake", 50.00),
(7, "Brownies", "Cookie", 1.25),
(8, "Flower Tarts", "Cookie", 1.25),
(9, "White Petit Four", "Petit Four", 2.80);

INSERT INTO Employee (EmployeeID, FirstName, LastName, Started, Experience)
VALUES (1, "Goswin", "Moeller", 1930, 50),
(2, "Raymond", "Moeller", 1930, 50),
(3, "D.W.", "Moeller", 1980, 30),
(4, "Eric", "Moeller", 2000, 20),
(5, "Dorothy", "Smith", 1970, 50),
(6, "Carol", "Jones", 1980, 40);

INSERT INTO Customer (CustomerID, FirstName, LastName, ProductID, EmployeeID, Paid)
VALUES (1, "Sally", "Mark", 1, 3, 6.00),
(2, "Brad", "Haley", 3, 5, 50.00),
(3, "Robert", "Davies", 9, 6, 11.25),
(4, "Lily", "Potts", 7, 4, 23.50),
(5, "Naomi", "Grant", 4, 4, 15.75),
(6, "Bert", "Mack", 2, 5, 12.75);

### Question 4
select Products.name from Products
join Customer on Products.ProductID = Customer.ProductID where Customer.customerID = 4;

select sum(Paid) from Customer;

select FirstName, LastName from Employee where Experience > 30;