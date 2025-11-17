CREATE TABLE Product (
    P_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Price DECIMAL(10, 2),
    Description TEXT
);

CREATE TABLE Order (
    Order_ID INT PRIMARY KEY,
    Order_Amount DECIMAL(10, 2),
    Order_Date DATE
);

CREATE TABLE Customer (
    User_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Password VARCHAR(255)
);

CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY,
    Type VARCHAR(50),
    Amount DECIMAL(10, 2)
);

CREATE TABLE Cart (
    Cart_ID INT PRIMARY KEY,
    User_ID INT,
    FOREIGN KEY (User_ID) REFERENCES Customer(User_ID)
);

CREATE TABLE Category (
    C_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Picture VARCHAR(255),
    Description TEXT
);

SELECT customer_id, COUNT(product) AS num_products, SUM(amount) AS total_spent
FROM order
WHERE amount > 50 
GROUP BY customer_id
HAVING COUNT(product) > 2 
ORDER BY total_spent DESC;


    SELECT columns
    FROM product
    INNER JOIN order ON P_ID = order_ID;


SELECT SUM(P_ID) AS Product_ID FROM product;
SELECT AVG(P_ID) AS Product_ID FROM product;


