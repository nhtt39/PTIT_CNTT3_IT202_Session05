CREATE DATABASE cntt3_kha2;
USE cntt3_kha2;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name   VARCHAR(255) NOT NULL,
    email       VARCHAR(255) NOT NULL UNIQUE,
    city        VARCHAR(255),
    status      ENUM('active', 'inactive') DEFAULT 'active'
);

INSERT INTO customers (full_name, email, city, status) VALUES
('Nguyễn Văn An', 'an.nguyen@gmail.com', 'TP.HCM', 'active'),
('Trần Thị Bình', 'binh.tran@gmail.com', 'Hà Nội', 'active'),
('Lê Văn Cường', 'cuong.le@gmail.com', 'Đà Nẵng', 'inactive'),
('Phạm Thị Dung', 'dung.pham@gmail.com', 'TP.HCM', 'inactive'),
('Hoàng Minh Đức', 'duc.hoang@gmail.com', 'Hà Nội', 'active');

SELECT * FROM customers;

SELECT * FROM customers WHERE city = 'TP.HCM';

SELECT * FROM customers WHERE status = 'active' AND city = 'Hà Nội';

SELECT * FROM customers ORDER BY full_name ASC;



