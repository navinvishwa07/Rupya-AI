CREATE TABLE gender (
    gender_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    gender_name VARCHAR(20) NOT NULL UNIQUE
);

INSERT INTO gender (gender_name) VALUES
('Male'),
('Female'),
('Non-Binary'),
('Other'),
('Prefer Not to Say');
