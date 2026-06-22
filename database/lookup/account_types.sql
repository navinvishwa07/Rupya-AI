CREATE TABLE account_types (

    account_type_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    account_type_name VARCHAR(50) NOT NULL UNIQUE

);

INSERT INTO account_types (account_type_name) VALUES
('Savings Account'),
('Current Account'),
('Salary Account'),
('Joint Account'),
('NRE Account'),
('NRO Account'),
('Fixed Deposit Account'),
('Recurring Deposit Account');