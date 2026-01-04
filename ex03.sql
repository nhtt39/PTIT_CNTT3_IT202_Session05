CREATE DATABASE cntt3_gioi1;
USE cntt3_gioi1;

CREATE TABLE orders (
    order_id INT primary key auto_increment,
    customer_id INT,
    total_amount DECIMAL(10,2),
    order_date DATE,
    status ENUM('pending', 'completed', 'cancelled')
);

INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES
(1, 4200000, '2024-12-11', 'completed'),
(2, 3000000, '2024-12-12', 'pending'),
(3, 7600000, '2024-12-13', 'completed'),
(4, 1800000, '2024-12-14', 'completed'),
(5, 12500000, '2024-12-15', 'completed'),

(1, 5200000, '2024-12-16', 'pending'),
(2, 6400000, '2024-12-17', 'completed'),
(3, 2700000, '2024-12-18', 'pending'),
(4, 9900000, '2024-12-19', 'completed'),
(5, 3100000, '2024-12-20', 'completed');

SELECT * FROM orders WHERE status = 'completed';

SELECT * FROM orders WHERE total_amount > 5000000;

SELECT * FROM orders ORDER BY order_date DESC LIMIT 5;

SELECT * FROM orders WHERE status = 'completed' ORDER BY total_amount DESC;






