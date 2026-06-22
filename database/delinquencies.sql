CREATE TABLE delinquencies (

    delinquency_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    enquiry_id BIGINT NOT NULL REFERENCES credit_enquiries(enquiry_id),
    applicant_id BIGINT NOT NULL REFERENCES applicants(applicant_id),
    creditor_name VARCHAR(255) NOT NULL,
    account_type VARCHAR(100),
    overdue_amount NUMERIC(15, 2) NOT NULL,
    days_past_due INT NOT NULL,
    status VARCHAR(50) NOT NULL,
    delinquency_date DATE NOT NULL,
    settlement_date DATE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()

);
