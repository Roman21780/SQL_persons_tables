-- Создание базы данных
CREATE DATABASE persons_table;

-- Создание таблицы PERSONS
CREATE TABLE PERSONS
(
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    phone_number VARCHAR(15),
    city_of_living VARCHAR(50),
    PRIMARY KEY (name, surname, age)
);

-- Комментарий:
-- Таблица PERSONS содержит 5 столбцов:
-- - name: имя пользователя (строка, обязательное поле)
-- - surname: фамилия пользователя (строка, обязательное поле)
-- - age: возраст пользователя (число, обязательное поле)
-- - phone_number: номер телефона (строка, необязательное поле)
-- - city_of_living: город проживания (строка, необязательное поле)
-- Первичный ключ — комбинация name, surname и age.


-- Добавление 100 случайных записей
DO $$
BEGIN
    FOR i in 1..100 LOOP
        INSERT INTO PERSONS (name, surname, age, phone_number, city_of_living)
        SELECT
            (ARRAY ['John', 'Alice', 'Bob', 'Eve', 'Mike', 'Anna', 'Tom', 'Emma'])[floor(random() * 8 + 1)] AS name,
            (ARRAY['Smith', 'Johnson', 'Williams', 'Brown', 'Davis', 'Miller', 'Wilson', 'Moore'])[floor(random() * 8 + 1)] AS surname,
            floor(random() * 60 +18)::int AS age,
            '+7' || lpad(floor(random() * 900000000 + 100000000)::text, 9, '0') AS phone_number,
            (ARRAY['MOSCOW', 'NEW YORK', 'LONDON', 'PARIS', 'TOKYO'])[floor(random() * 5 + 1)] AS city_of_living
        ON CONFLICT (name, surname, age) DO NOTHING;
    END LOOP;
END $$;


-- выбрать все данные
SELECT * FROM PERSONS;

-- список баз данных
SELECT datname FROM pg_database;
