CREATE TABLE ORDERS(
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    customer_id INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    amount INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(id)
);

-- Комментарий:
-- - id: уникальный идентификатор заказа (автоинкремент).
-- - date: дата заказа.
-- - customer_id: идентификатор пользователя, сделавшего заказ (внешний ключ).
-- - product_name: название продукта.
-- - amount: количество единиц продукта.

-- Добавление заказов
INSERT INTO ORDERS (date, customer_id, product_name, amount)
VALUES
    ('2023-10-01', 1, 'Laptop', 1),
    ('2023-10-02', 2, 'Smartphone', 2),
    ('2023-10-03', 3, 'Headphones', 3);