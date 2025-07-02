
Create table Employees (
	EmpID INT, 
	Name VARCHAR(50), 
	Salary DECIMAL(10,2)
);


INSERT INTO Employees (EmpID, Name, Salary) VALUES
(1, 'Charlie', 7000.00),
(2, 'Diana', 6200.00),
(3, 'Saphia', 7100.00);

update employees
set salary=7000
where EmpID =2;

delete from employees
where EmpID=2

--DELETE — ma'lumotlarni shart bo‘yicha o'chiradi, jadval qoladi.
--TRUNCATE — jadvaldagi barcha ma'lumotlarni tezda o'chiradi, jadval saqlanadi.
--DROP — jadvalni butunlay, ma'lumotlari bilan birga o'chiradi
ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100);

ALTER TABLE Employees
ADD Department VARCHAR(50);

ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

delete from employees

--Write a query to completely remove the Departments table from the database.

select * from Employees

INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT 1, 'HR' UNION ALL
SELECT 2, 'Finance' UNION ALL
SELECT 3, 'IT' UNION ALL
SELECT 4, 'Sales' UNION ALL
SELECT 5, 'Marketing';

UPDATE Departments
SET Department = 'Management'
WHERE Salary > 5000;
DELETE FROM Departments

ALTER TABLE Employees
DROP COLUMN Department
EXEC sp_rename 'Employees', 'StaffMembers';
DROP TABLE Departments

select * from Departments

--Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5 to Inventory table.

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

ALTER TABLE Products
ADD CONSTRAINT chk_price_positive CHECK (Price > 0);
ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50;

EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';

INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) VALUES
(1, 'Laptop', 'Electronics', 1200.00, 30);

INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) VALUES
(2, 'Desk Chair', 'Furniture', 150.00, 100);

INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) VALUES
(3, 'Coffee Maker', 'Appliances', 80.50, 75);

INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) VALUES
(4, 'Notebook', 'Stationery', 3.75, 500);

INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) VALUES
(5, 'Smartphone', 'Electronics', 699.99, 45);
SELECT *
INTO Products_Backup
FROM Products;

EXEC sp_rename 'Products', 'Inventory';

ALTER TABLE Inventory
ALTER COLUMN Price FLOAT;
CREATE TABLE Inventory (
    ProductCode INT IDENTITY(1000,5) PRIMARY KEY,
 );

select * from Inventory



