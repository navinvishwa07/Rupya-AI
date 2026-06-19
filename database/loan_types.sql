CREATE TABLE loan_types (
    loan_type_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    loan_type_name VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO loan_types (loan_type_name) VALUES
('Personal Loan'),
('Home Loan'),
('Car Loan'),
('Education Loan'),
('Business Loan'),
('Gold Loan'),
('Agricultural Loan'),
('Two Wheeler Loan'),
('Consumer Durable Loan'),
('Medical Loan'),
('Travel Loan'),
('Wedding Loan'),
('Mortgage Loan');
