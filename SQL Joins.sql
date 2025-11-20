CREATE DATABASE Joins_db;
USE Joins_db;

CREATE TABLE Customers (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(100),
customer_city VARCHAR(50)
);

CREATE TABLE Orders (
order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
product_name VARCHAR(50),
product_amount INT,
FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)
); 

INSERT INTO Customers (customer_name, customer_city) VALUES ("Attu", "Chennai"),
("Bhuvi", "Chennai"), ("Fadhil", "Tirunelveli"),
("Sweety", "Rajahmundry"), ("Benny", "Hyderabad"),
("Honey", "Hyderabad");

INSERT INTO Orders (customer_id, product_name, product_amount) VALUES (1, "Laptop", 90000), 
(3, "TV", 125000), (3, "Smart Phone", 55000),
(2, "Ipad", 70000), (4, "Ear Pods", 35000);

SELECT customer_name, product_name, product_amount FROM Customers INNER JOIN Orders USING (customer_id); 
SELECT customer_name, product_name, product_amount FROM Customers LEFT JOIN Orders USING (customer_id);
SELECT customer_name, product_name, product_amount FROM Customers RIGHT JOIN Orders USING (customer_id);

SELECT customer_name, product_name, product_amount FROM Customers LEFT JOIN Orders USING (customer_id)
UNION
SELECT customer_name, product_name, product_amount FROM Customers RIGHT JOIN Orders USING (customer_id);

