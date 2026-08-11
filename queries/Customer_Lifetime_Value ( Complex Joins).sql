INSERT INTO customers VALUES
(1, 'Alice Chen', 'alice@email.com', 'USA', 'gold', '2023-01-15', 8),
(2, 'Bob Martinez', 'bob@email.com', 'Mexico', 'silver', '2023-03-20', 5),
(3, 'Carol Smith', 'carol@email.com', 'USA', 'platinum', '2022-06-10', 15),
(4, 'David Brown', 'david@email.com', 'Canada', 'bronze', '2024-01-05', 2),
(5, 'Emma Wilson', 'emma@email.com', 'USA', 'gold', '2023-05-30', 9);

INSERT INTO suppliers VALUES
(1, 'FastSupply Co', 'USA', 0.95),
(2, 'GlobalTextiles', 'China', 0.88),
(3, 'EcoFabrics', 'Germany', 0.92);

INSERT INTO products VALUES
(101, 'Premium T-Shirt', 'Clothing', 39.99, 10.00, 1, 150),
(102, 'Jeans', 'Clothing', 79.99, 25.00, 2, 80),
(103, 'Sneakers', 'Footwear', 129.99, 40.00, 1, 60),
(104, 'Winter Jacket', 'Outerwear', 199.99, 70.00, 3, 40),
(105, 'Summer Hat', 'Accessories', 24.99, 5.00, 2, 200);

INSERT INTO orders VALUES
(1001, 1, '2023-02-10', 119.97, 0, 'credit_card', 'delivered'),
(1002, 1, '2023-05-15', 299.97, 20, 'credit_card', 'delivered'),
(1003, 2, '2023-04-20', 79.99, 0, 'paypal', 'delivered'),
(1004, 3, '2023-07-10', 439.96, 40, 'credit_card', 'delivered'),
(1005, 3, '2023-09-05', 249.97, 0, 'apple_pay', 'delivered'),
(1006, 3, '2024-01-20', 309.98, 0, 'credit_card', 'delivered'),
(1007, 4, '2024-02-10', 129.99, 15, 'credit_card', 'processing'),
(1008, 5, '2024-03-01', 199.98, 0, 'credit_card', 'delivered'),
(1009, 5, '2024-03-25', 309.97, 30, 'paypal', 'delivered');

INSERT INTO order_items VALUES
(1, 1001, 101, 3, 39.99, 0),
(2, 1002, 104, 1, 199.99, 0),
(3, 1002, 103, 1, 129.99, 10),
(4, 1003, 102, 1, 79.99, 0),
(5, 1004, 104, 2, 199.99, 5),
(6, 1004, 103, 1, 129.99, 0),
(7, 1005, 101, 2, 39.99, 0),
(8, 1005, 105, 3, 24.99, 0),
(9, 1006, 102, 1, 79.99, 0),
(10, 1006, 101, 1, 39.99, 0),
(11, 1007, 103, 1, 129.99, 10),
(12, 1008, 104, 1, 199.99, 0),
(13, 1009, 101, 2, 39.99, 0),
(14, 1009, 102, 1, 79.99, 30);

INSERT INTO product_reviews VALUES
(1, 101, 1, '2023-02-15', 5, 'Great quality!'),
(2, 104, 1, '2023-05-20', 4, 'Good but runs small'),
(3, 102, 2, '2023-04-25', 4, 'Comfortable fit'),
(4, 104, 3, '2023-07-15', 5, 'Best jacket ever'),
(5, 103, 3, '2023-09-10', 5, 'Perfect sneakers'),
(6, 103, 5, '2024-02-15', 4, 'Good quality');
