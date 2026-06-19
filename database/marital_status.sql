CREATE TABLE marital_statuses (
    marital_status_id BIGINT AUTO GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    marital_status_name VARCHAR(50) NOT NULL UNIQUE 
);

INSERT INTO marital_statuses (marital_status_name) VALUES
('Single'),
('Married'),
('Divorced'),
('Widowed'),
('Separated'),
('In a relationship');