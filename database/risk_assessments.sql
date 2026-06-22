CREATE TABLE risk_assessments (

    assessment_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    application_id BIGINT NOT NULL UNIQUE REFERENCES applications(application_id),
    overall_score NUMERIC(5, 2),
    risk_category VARCHAR(20),
    recommendation VARCHAR(20),
    debt_to_income_ratio NUMERIC(5, 4),
    loan_to_income_ratio NUMERIC(5, 4),
    credit_score_used INT,
    assessed_by VARCHAR(50) NOT NULL DEFAULT 'AI',
    status VARCHAR(20) NOT NULL DEFAULT 'Pending',
    assessed_at TIMESTAMPTZ,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()

);
