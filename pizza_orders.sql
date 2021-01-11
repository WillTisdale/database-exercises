USE codeup_test_db;

DROP TABLE IF EXISTS pizza_orders;

CREATE TABLE IF NOT EXISTS pizza_orders (
    name VARCHAR(255),
    phone_number VARCHAR(50),
    email VARCHAR(100),
    address VARCHAR(255),
    pizza_size CHAR(2),
    total_cost DECIMAL(10,2),
    description TEXT,
    isDelivered TINYINT NOT NULL,
    created_at CHAR(5),
    updated_at CHAR(5)
);