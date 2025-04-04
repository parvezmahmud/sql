--CREATE TWO TABLES WITH ONE COMMON FIELD CONNECTING THEM
CREATE TABLE Products(
ID INT PRIMARY KEY IDENTITY(1,1), --PK TO SPECIFY IDENTIFYING FIELD AND IDENTITY FIELD IS TO AUTOGENERATE ID
Name VARCHAR(255) NOT NULL,
UnitPrice MONEY NOT NULL
)


--USING JUST REFERENCES
CREATE TABLE Sales(
ID INT PRIMARY KEY IDENTITY(1,1),
Quantity INT NOT NULL,
Date DATE NOT NULL,
Item INT REFERENCES Products(ID)
)

--USING FOREIGN KEY
CREATE TABLE Sales(
ID INT PRIMARY KEY IDENTITY(1,1),
Quantity INT NOT NULL,
Date DATE NOT NULL,
Item INT NOT NULL,
FOREIGN KEY (Item) REFERENCES Products(ID)
)

INSERT INTO Products(Name, UnitPrice)
VALUES
('CPU', 5000),
('GPU', 12000),
('RAM', 3000),
('SSD', 10000),
('HDD', 5000);

INSERT INTO Sales(Quantity, Date, Item)
VALUES
(3, '2024-06-27', 2),
(6, '2023-02-17', 3),
(2, '2025-03-01', 4),
(1, '2025-02-14', 1);

--RIGHT JOIN
SELECT *
FROM Products
RIGHT JOIN Sales
ON Products.ID = Sales.ID;


--LEFT JOIN
SELECT *
FROM Products
LEFT JOIN Sales
ON Products.ID=Sales.ID;

--INNER JOIN
SELECT Products.Name, SUM(Products.UnitPrice*Sales.Quantity) AS [Total Sale]
FROM Products
INNER JOIN Sales
ON Products.ID=Sales.ID
GROUP BY Products.Name;