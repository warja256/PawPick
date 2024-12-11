-- Создание таблицы
CREATE TABLE example_table (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Вставка данных
INSERT INTO example_table (name) VALUES ('Example Name 1');
INSERT INTO example_table (name) VALUES ('Example Name 2');
