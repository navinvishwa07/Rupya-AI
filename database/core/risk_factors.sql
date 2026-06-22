CREATE TABLE risk_factors (

    factor_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    assessment_id BIGINT NOT NULL REFERENCES risk_assessments(assessment_id),
    factor_name VARCHAR(100) NOT NULL,
    factor_value TEXT NOT NULL,
    factor_score NUMERIC(5, 2),
    impact VARCHAR(10) NOT NULL,
    weight NUMERIC(5, 4),
    description TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()

);
