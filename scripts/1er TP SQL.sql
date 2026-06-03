SELECT column_name 
FROM information_schema.columns 
WHERE table_name = 'order_items';

DROP TABLE orders;
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    foodtruck_id INT NOT NULL,
    order_date DATE,
    status VARCHAR(50),
    total FLOAT
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL
);

CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    foodtruck_id INT NOT NULL,
    location_date DATE,
    zone VARCHAR(50)
);
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    foodtruck_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    price FLOAT NOT NULL,
    stock INT
);

SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public';