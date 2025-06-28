CREATE TABLE CUSTOMERS(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    age INT,
    phone_number VARCHAR(15)
);

-- Комментарий:
-- - id: уникальный идентификатор пользователя (автоинкремент).
-- - name: имя пользователя.
-- - surname: фамилия пользователя.
-- - age: возраст пользователя (необязательное поле).
-- - phone_number: номер телефона пользователя (необязательное поле).

-- Добавление пользователей
INSERT INTO CUSTOMERS (name, surname, age, phone_number)
VALUES
    ('Alexey', 'Ivanov', 30, '+7123456789'),
    ('alexey', 'Petrov', 25, '+7987654321'),
    ('Maria', 'Sidorova', 22, '+7555555555');