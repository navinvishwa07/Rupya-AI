CREATE TABLE income_types (

    income_type_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    income_type_name VARCHAR(50) NOT NULL UNIQUE

);

INSERT INTO income_types (income_type_name) VALUES
('Salary'),
('Business Income'),
('Self-Employment Income'),
('Freelance Income'),
('Pension'),
('Rental Income'),
('Agricultural Income'),
('Investment Income'),
('Commission Income'),
('Other');