CREATE TABLE credit_enquiries (

    enquiry_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    application_id BIGINT NOT NULL REFERENCES applications(application_id),
    applicant_id BIGINT NOT NULL REFERENCES applicants(applicant_id),
    bureau_name VARCHAR(100) NOT NULL,
    credit_score INT NOT NULL,
    enquiry_date DATE NOT NULL,
    report_reference VARCHAR(255),
    raw_response JSONB,
    total_accounts INT,
    active_accounts INT,
    closed_accounts INT,
    total_outstanding NUMERIC(15, 2),
    total_overdue NUMERIC(15, 2),
    enquiries_last_6m INT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()

);
