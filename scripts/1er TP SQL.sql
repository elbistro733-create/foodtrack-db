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


ALTER TABLE orders
ADD COLUMN delivery_status VARCHAR(50);

ALTER TABLE orders
ADD CONSTRAINT check_delivery  -- es la restriccion para que no acepta nada
CHECK (delivery_status IN ('En tiempo', 'Demorado'));  --check: solo acepte estos 2 valores

ALTER TABLE orders
ADD CONSTRAINT fk_orders_foodtruck
FOREIGN KEY (foodtruck_id) 
REFERENCES foodtrucks(foodtruck_id);

ALTER TABLE orders
ADD CONSTRAINT fk_orders_foodtruck
FOREIGN KEY (foodtruck_id) 
REFERENCES foodtrucks(foodtruck_id);

ALTER TABLE products
ADD CONSTRAINT fk_products_foodtruck
FOREIGN KEY (foodtruck_id) 
REFERENCES foodtrucks(foodtruck_id);

ALTER TABLE order_items
ADD CONSTRAINT fk_orderitems_order
FOREIGN KEY (order_id) 
REFERENCES orders(order_id);

ALTER TABLE order_items
ADD CONSTRAINT fk_orderitems_product
FOREIGN KEY (product_id) 
REFERENCES products(product_id);

ALTER TABLE locations
ADD CONSTRAINT fk_locations_foodtruck
FOREIGN KEY (foodtruck_id) 
REFERENCES foodtrucks(foodtruck_id);