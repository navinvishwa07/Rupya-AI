CREATE TABLE employment_types (

    employment_type_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    employment_type_name VARCHAR(50) NOT NULL UNIQUE

);

INSERT INTO employment_types (employment_type_name) VALUES
('Full-Time'),
('Part-Time'),
('Contract'),
('Temporary'),
('Self-Employed');