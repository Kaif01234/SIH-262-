-- SIH26262 AICTE FlowTrack - Core Production Schema Draft (PostgreSQL)

CREATE TABLE institutions (
    institution_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    region VARCHAR(100),
    status VARCHAR(50) DEFAULT 'Active'
);

CREATE TABLE applications (
    application_id VARCHAR(50) PRIMARY KEY,
    institution_id VARCHAR(50) REFERENCES institutions(institution_id),
    application_type VARCHAR(100) NOT NULL,
    current_stage VARCHAR(100) NOT NULL, -- e.g., 'Scrutiny', 'EVC', 'Approved'
    submission_date DATE NOT NULL,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE compliance_documents (
    document_id SERIAL PRIMARY KEY,
    institution_id VARCHAR(50) REFERENCES institutions(institution_id),
    document_type VARCHAR(100) NOT NULL, -- e.g., 'Land Lease', 'Fire Safety'
    expiry_date DATE NOT NULL,
    is_valid BOOLEAN DEFAULT TRUE
);

CREATE TABLE audit_logs (
    log_id SERIAL PRIMARY KEY,
    application_id VARCHAR(50) REFERENCES applications(application_id),
    action_taken VARCHAR(255) NOT NULL,
    officer_name VARCHAR(100) NOT NULL,
    remarks TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);