-- =========================================
-- Pizza Sales Analysis
-- Schema Definition
-- =========================================

-- Drop tables if they already exist
DROP TABLE IF EXISTS order_details;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS pizzas;
DROP TABLE IF EXISTS pizza_types;

-- =========================================
-- Dimension Table: orders
-- =========================================
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    date DATE NOT NULL,
    time TIME NOT NULL
);

-- =========================================
-- Dimension Table: pizza_types
-- =========================================
CREATE TABLE pizza_types (
    pizza_type_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    ingredients TEXT
);

-- =========================================
-- Dimension Table: pizzas
-- =========================================
CREATE TABLE pizzas (
    pizza_id VARCHAR(50) PRIMARY KEY,
    pizza_type_id VARCHAR(50) NOT NULL,
    size VARCHAR(10) NOT NULL,
    price DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (pizza_type_id) REFERENCES pizza_types(pizza_type_id)
);

-- =========================================
-- Fact Table: order_details
-- =========================================
CREATE TABLE order_details (
    order_details_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    pizza_id VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (pizza_id) REFERENCES pizzas(pizza_id)
);

