CREATE TABLE documents (

    document_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    application_id BIGINT NOT NULL REFERENCES applications(application_id),
    applicant_id BIGINT NOT NULL REFERENCES applicants(applicant_id),
    document_type VARCHAR(100) NOT NULL,
    file_name VARCHAR(255) NOT NULL,
    storage_path TEXT NOT NULL,
    file_size_bytes BIGINT,
    mime_type VARCHAR(100),
    verification_status VARCHAR(50) NOT NULL DEFAULT 'Pending',
    verified_by BIGINT REFERENCES analysts(analyst_id),
    verified_at TIMESTAMPTZ,
    rejection_reason TEXT,
    uploaded_at TIMESTAMPTZ NOT NULL DEFAULT NOW()

);
