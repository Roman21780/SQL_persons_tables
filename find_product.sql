SELECT o.product_name
FROM ORDERS o
JOIN CUSTOMERS c ON o.customer_id = c.id
WHERE LOWER(c.name) = 'alexey'

-- Комментарий:
-- - Используется JOIN для связи таблиц ORDERS и CUSTOMERS через customer_id.
-- - Функция LOWER() преобразует имя в нижний регистр для сравнения.
-- - Результат: список названий продуктов для пользователей с именем "alexey".