CREATE DATABASE cntt3_gioi2;
USE cntt3_gioi2;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    sold_quantity INT DEFAULT 0,
    status ENUM('active', 'inactive') DEFAULT 'active'
);

INSERT INTO products (product_name, price, stock, sold_quantity, status) VALUES
('iPhone 15 Pro', 32000000, 50, 120, 'active'),
('Samsung Galaxy S23', 25000000, 40, 95, 'active'),
('Xiaomi Redmi Note 13', 7500000, 100, 180, 'active'),
('MacBook Air M2', 29000000, 30, 70, 'active'),
('Laptop Dell Inspiron', 18000000, 25, 60, 'active'),
('Tai nghe AirPods Pro', 6200000, 80, 140, 'active'),
('USB Sandisk 64GB', 350000, 200, 210, 'active'),
('Sạc nhanh Anker 65W', 1200000, 90, 160, 'active'),
('Loa Bluetooth JBL Flip 6', 2800000, 40, 85, 'active'),
('Webcam Logitech C920', 2100000, 30, 65, 'active'),
('Camera IP Xiaomi', 950000, 100, 175, 'active'),
('Balo laptop chống sốc', 850000, 120, 98, 'active'),
('Cáp sạc Type-C Baseus', 180000, 300, 260, 'active'),
('Pin dự phòng 20000mAh', 950000, 150, 190, 'active'),
('Máy in HP LaserJet', 4200000, 15, 40, 'inactive'),
('Router Wifi TP-Link AX3000', 2700000, 35, 75, 'active');


SELECT * FROM products;

SELECT product_name, sold_quantity FROM products ORDER BY sold_quantity DESC LIMIT 10;

SELECT product_name, sold_quantity FROM products ORDER BY sold_quantity DESC LIMIT 10 OFFSET 5;

SELECT product_name, price, sold_quantity FROM products WHERE price < 2000000 ORDER BY sold_quantity DESC;




