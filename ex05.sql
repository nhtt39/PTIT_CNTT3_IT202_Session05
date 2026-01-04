CREATE DATABASE cntt3_xuatsac1;
USE cntt3_xuatsac1;

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    order_date DATE NOT NULL,
    status ENUM('pending', 'completed', 'cancelled') DEFAULT 'pending'
);

INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES
(1, 3200000, '2024-12-01', 'completed'),
(2, 8500000, '2024-12-02', 'completed'),
(3, 1200000, '2024-12-03', 'cancelled'),
(4, 4500000, '2024-12-04', 'pending'),
(5, 9800000, '2024-12-05', 'completed'),

(1, 15000000, '2024-12-06', 'completed'),
(2, 2300000, '2024-12-07', 'pending'),
(3, 6700000, '2024-12-08', 'completed'),
(4, 5100000, '2024-12-09', 'completed'),
(5, 890000, '2024-12-10', 'cancelled'),

(1, 5200000, '2024-12-16', 'pending'),
(2, 6400000, '2024-12-17', 'completed'),
(3, 2700000, '2024-12-18', 'pending'),
(4, 9900000, '2024-12-19', 'completed'),
(5, 3100000, '2024-12-20', 'completed');

SELECT * FROM orders WHERE status != 'cancelled' ORDER BY order_date DESC LIMIT 5;

SELECT * FROM orders WHERE status != 'cancelled' ORDER BY order_date DESC LIMIT 5 OFFSET 5;

