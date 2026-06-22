CREATE TABLE education_level (

    education_level_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    education_level_name VARCHAR(50) NOT NULL UNIQUE

);

INSERT INTO education_level (education_level_name) VALUES
('No Formal Education'),
('Primary School'),
('Secondary School'),
('Higher Secondary'),
('Diploma'),
('Undergraduate'),
('Postgraduate'),
('Doctorate'),
('Professional Certification');