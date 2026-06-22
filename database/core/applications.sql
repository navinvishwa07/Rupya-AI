CREATE TABLE applications (

    application_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    application_number VARCHAR(20) NOT NULL UNIQUE,
    applicant_id BIGINT NOT NULL REFERENCES applicants(applicant_id),
    loan_type_id BIGINT NOT NULL REFERENCES loan_types(loan_type_id),
    loan_amount_requested NUMERIC(15, 2) NOT NULL,
    loan_tenure_months INT NOT NULL,
    loan_purpose TEXT,
    repayment_id BIGINT REFERENCES repayment(repayment_id),
    status VARCHAR(50) NOT NULL DEFAULT 'Submitted',
    assigned_analyst_id BIGINT REFERENCES analysts(analyst_id),
    submitted_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    reviewed_at TIMESTAMPTZ,
    decided_at TIMESTAMPTZ,
    decision_notes TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()

);
