create database AI_ECOMMERCE;
use AI_ECOMMERCE;

-- Create Customer_Details table
CREATE TABLE Customer_Details (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    age INT,
    gender ENUM('Male', 'Female'),
    location VARCHAR(255),
    join_date DATE
);

-- Create Product_Details table
CREATE TABLE Product_Details (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(255),
    price DECIMAL(10, 2),
    stock INT
);



-- Create Transaction_History table
CREATE TABLE Transaction_History (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    transaction_date DATE,
    quantity INT,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customer_Details(customer_id),
    FOREIGN KEY (product_id) REFERENCES Product_Details(product_id)
);

select * from customer_details;
select * from product_details;
INSERT INTO Customer_Details (customer_id, name, email, age, gender, location, join_date) VALUES
(1, 'John Doe', 'johndoe@example.com', 25, 'Male', 'New York', '2022-01-15'),
(2, 'Jane Smith', 'janesmith@example.com', 30, 'Female', 'Los Angeles', '2023-03-10'),
(3, 'Michael Johnson', 'mjohnson@example.com', 35, 'Male', 'Chicago', '2021-05-20'),
(4, 'Emily Davis', 'emilyd@example.com', 28, 'Female', 'Boston', '2022-07-30'),
(5, 'David Lee', 'davidlee@example.com', 40, 'Male', 'San Francisco', '2020-11-10'),
(6, 'Sarah Brown', 'sarahb@example.com', 22, 'Female', 'Miami', '2023-06-05'),
(7, 'James Wilson', 'jamesw@example.com', 45, 'Male', 'Seattle', '2021-04-18'),
(8, 'Olivia Miller', 'oliviam@example.com', 33, 'Female', 'San Diego', '2021-12-20'),
(9, 'William Garcia', 'williamg@example.com', 29, 'Male', 'Houston', '2022-09-17'),
(10, 'Ava Martinez', 'avam@example.com', 31, 'Female', 'Dallas', '2023-01-25'),
(11, 'Daniel Thomas', 'danielt@example.com', 39, 'Male', 'Chicago', '2022-02-13'),
(12, 'Mia Anderson', 'miaa@example.com', 26, 'Female', 'Miami', '2022-08-22'),
(13, 'Matthew Taylor', 'matthewt@example.com', 38, 'Male', 'Los Angeles', '2021-03-08'),
(14, 'Chloe Moore', 'chlomoore@example.com', 27, 'Female', 'Boston', '2023-07-10'),
(15, 'Lucas Jackson', 'lucasj@example.com', 30, 'Male', 'New York', '2022-05-30'),
(16, 'Sophia White', 'sophiaw@example.com', 25, 'Female', 'San Francisco', '2023-03-12'),
(17, 'Benjamin Harris', 'benjaminh@example.com', 43, 'Male', 'Los Angeles', '2020-12-18'),
(18, 'Charlotte Clark', 'charlottec@example.com', 28, 'Female', 'Chicago', '2021-11-05'),
(19, 'Henry Lewis', 'henryl@example.com', 40, 'Male', 'Miami', '2023-02-10'),
(20, 'Amelia Robinson', 'amelia@example.com', 22, 'Female', 'San Diego', '2023-04-03'),
(21, 'George Walker', 'georgew@example.com', 34, 'Male', 'Houston', '2022-10-22'),
(22, 'Eva Hall', 'evah@example.com', 36, 'Female', 'Seattle', '2023-06-25'),
(23, 'Samuel Allen', 'samuelallen@example.com', 29, 'Male', 'San Francisco', '2021-06-18'),
(24, 'Isabella Young', 'isabellay@example.com', 41, 'Female', 'Boston', '2020-09-01'),
(25, 'Leo King', 'leok@example.com', 32, 'Male', 'Chicago', '2022-11-02'),
(26, 'Grace Wright', 'gracew@example.com', 27, 'Female', 'Los Angeles', '2021-02-17'),
(27, 'Jack Adams', 'jackadams@example.com', 33, 'Male', 'New York', '2023-01-10'),
(28, 'Lily Scott', 'lilys@example.com', 30, 'Female', 'Miami', '2022-05-12'),
(29, 'Elijah Evans', 'elijah@example.com', 38, 'Male', 'San Diego', '2021-10-13'),
(30, 'Sophia Green', 'sophiag@example.com', 29, 'Female', 'Seattle', '2022-04-27');

INSERT INTO Product_details (product_id, product_name, category, price, stock) 
VALUES
(1, 'Smartphone', 'Electronics', 699.99, 50),
(2, 'Laptop', 'Electronics', 1299.99, 25),
(3, 'Headphones', 'Electronics', 199.99, 100),
(4, 'TV', 'Electronics', 499.99, 40),
(5, 'Refrigerator', 'Appliances', 899.99, 30),
(6, 'Microwave', 'Appliances', 199.99, 60),
(7, 'Air Conditioner', 'Appliances', 499.99, 25),
(8, 'Toaster', 'Appliances', 29.99, 75),
(9, 'Blender', 'Appliances', 49.99, 100),
(10, 'Smartwatch', 'Electronics', 199.99, 80),
(11, 'Speakers', 'Electronics', 129.99, 70),
(12, 'Digital Camera', 'Electronics', 549.99, 50),
(13, 'Smart TV', 'Electronics', 899.99, 40),
(14, 'Vacuum Cleaner', 'Home Appliances', 159.99, 90),
(15, 'Air Purifier', 'Home Appliances', 159.99, 60),
(16, 'Juicer', 'Appliances', 79.99, 85),
(17, 'Hair Dryer', 'Personal Care', 29.99, 120),
(18, 'Electric Kettle', 'Home Appliances', 39.99, 50),
(19, 'Coffee Maker', 'Home Appliances', 89.99, 40),
(20, 'Iron', 'Home Appliances', 25.99, 150),
(21, 'Refrigerator', 'Home Appliances', 849.99, 35),
(22, 'Washing Machine', 'Home Appliances', 499.99, 45),
(23, 'Pressure Cooker', 'Kitchenware', 59.99, 80),
(24, 'Dishwasher', 'Home Appliances', 399.99, 25),
(25, 'Blender', 'Kitchenware', 69.99, 90),
(26, 'Smart Fridge', 'Home Appliances', 999.99, 50),
(27, 'Portable Speaker', 'Electronics', 79.99, 75),
(28, 'Smart Light Bulb', 'Home Electronics', 29.99, 150),
(29, 'Electric Grill', 'Kitchenware', 89.99, 30),
(30, 'Robot Vacuum', 'Home Appliances', 179.99, 40);

CREATE TABLE Transaction_History (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    transaction_date DATE,
    quantity INT,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customer_Details(customer_id),
    FOREIGN KEY (product_id) REFERENCES Product_Details(product_id)
);

INSERT INTO Transaction_History (customer_id, product_id, transaction_date, quantity, total_amount)
VALUES
(1, 1, '2024-11-01', 1, 1299.99),
(2, 2, '2024-11-01', 2, 1799.98),
(3, 3, '2024-11-02', 1, 199.99),
(4, 4, '2024-11-03', 3, 479.97),
(5, 5, '2024-11-03', 1, 899.99),
(6, 6, '2024-11-04', 2, 79.98),
(7, 7, '2024-11-04', 1, 549.99),
(8, 8, '2024-11-05', 1, 499.99),
(9, 9, '2024-11-06', 2, 399.98),
(10, 10, '2024-11-06', 1, 49.99),
(11, 11, '2024-11-07', 1, 129.99),
(12, 12, '2024-11-07', 1, 549.99),
(13, 13, '2024-11-08', 1, 899.99),
(14, 14, '2024-11-09', 1, 159.99),
(15, 15, '2024-11-09', 2, 319.98),
(16, 16, '2024-11-10', 1, 79.99),
(17, 17, '2024-11-11', 1, 29.99),
(18, 18, '2024-11-11', 1, 89.99),
(19, 19, '2024-11-12', 1, 89.99),
(20, 20, '2024-11-13', 1, 25.99),
(21, 21, '2024-11-13', 1, 849.99),
(22, 22, '2024-11-14', 1, 499.99),
(23, 23, '2024-11-15', 1, 59.99),
(24, 24, '2024-11-16', 1, 99.99),
(25, 25, '2024-11-16', 2, 139.98),
(26, 26, '2024-11-17', 1, 999.99),
(27, 27, '2024-11-18', 1, 79.99),
(28, 28, '2024-11-18', 1, 29.99),
(29, 29, '2024-11-19', 1, 89.99),
(30, 30, '2024-11-20', 1, 179.99);


select * from customer_details;

select * from product_details;

select * from transaction_history;

SELECT 
    P.product_name,
    SUM(T.quantity) AS total_quantity_sold,
    SUM(T.total_amount) AS total_sales
FROM 
    Product_Details P
JOIN 
    Transaction_History T ON P.product_id = T.product_id
GROUP BY 
    P.product_name
ORDER BY 
    total_sales DESC;

SELECT 
    P.category,
    SUM(T.quantity) AS total_quantity_sold,
    SUM(T.total_amount) AS total_revenue
FROM 
    Product_Details P
JOIN 
    Transaction_History T ON P.product_id = T.product_id
GROUP BY 
    P.category
ORDER BY 
    total_revenue DESC;

SELECT 
    DATE_FORMAT(transaction_date, '%Y-%m') AS month,
    SUM(total_amount) AS monthly_sales
FROM 
    Transaction_History
GROUP BY 
    month
ORDER BY 
    month;

SELECT 
    P.category,
    SUM(T.quantity) AS total_quantity_sold,
    SUM(T.total_amount) AS total_revenue
FROM 
    Product_Details P
JOIN 
    Transaction_History T ON P.product_id = T.product_id
GROUP BY 
    P.category
ORDER BY 
    total_revenue DESC;

SELECT 
    DATE_FORMAT(transaction_date, '%Y-%m') AS month,
    AVG(total_amount) AS average_order_value
FROM 
    Transaction_History
GROUP BY 
    month
ORDER BY 
    month;
