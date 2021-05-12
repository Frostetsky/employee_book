create database employee_book;

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(15),
    surname VARCHAR(25),
    department VARCHAR(20),
    salary INT
);

INSERT INTO employees (name, surname, department, salary) VALUES ('Zaur', 'Tregulov', 'IT', 120000);
INSERT INTO employees (name, surname, department, salary) VALUES ('Oleg', 'Ivanov', 'Sales', 95000);
INSERT INTO employees (name, surname, department, salary) VALUES ('Nina', 'Sidorova', 'HR', 66000);

