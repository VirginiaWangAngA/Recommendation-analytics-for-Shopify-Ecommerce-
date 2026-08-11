CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR,
    email VARCHAR,
    country VARCHAR,
    customer_tier VARCHAR,
    first_purchase_date DATE,
    total_purchases INT
);

CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR,
    country VARCHAR,
    reliability_score DECIMAL
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR,
    category VARCHAR,
    price DECIMAL,
    cost DECIMAL,
    supplier_id INT,
    inventory_count INT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL,
    discount_applied DECIMAL,
    payment_method VARCHAR,
    order_status VARCHAR
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL,
    discount_percent DECIMAL
);

CREATE TABLE product_reviews (
    review_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    review_date DATE,
    rating INT,
    review_text VARCHAR
);
