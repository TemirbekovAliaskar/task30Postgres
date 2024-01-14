INSERT INTO cars (car_name, car_price, car_year) VALUES
                                                     ('Toyota Camry', 25000, 2022),
                                                     ('Honda Accord', 23000, 2022),
                                                     ('Ford Mustang', 35000, 2022);

SELECT*FROM cars;

CREATE TABLE customers (
                           customer_id SERIAL PRIMARY KEY,
                           customer_name VARCHAR(255) NOT NULL,
                           email VARCHAR(255) NOT NULL
);

INSERT INTO customers (customer_name, email) VALUES
                                                 ('John Doe', 'john.doe@example.com'),
                                                 ('Jane Smith', 'jane.smith@example.com');

CREATE TABLE orders (
                        order_id SERIAL PRIMARY KEY,
                        customer_id INTEGER REFERENCES customers(customer_id),
                        order_date DATE NOT NULL
);

INSERT INTO orders (customer_id, order_date) VALUES
                                                 (1, '2022-01-15'),
                                                 (2, '2022-01-16');


CREATE TABLE products (
                          product_id SERIAL PRIMARY KEY,
                          product_name VARCHAR(255) NOT NULL,
                          price DECIMAL NOT NULL
);

INSERT INTO products (product_name, price) VALUES
                                               ('Laptop', 1200),
                                               ('Smartphone', 800),
                                               ('Headphones', 150);

CREATE TABLE order_items (
                             order_item_id SERIAL PRIMARY KEY,
                             order_id INTEGER REFERENCES orders(order_id),
                             product_id INTEGER REFERENCES products(product_id),
                             quantity INTEGER NOT NULL
);

SELECT*FROM order_items;

INSERT INTO order_items (order_id, product_id, quantity) VALUES
                                                             (1, 1, 2),
                                                             (1, 2, 1),
                                                             (2, 3, 3);