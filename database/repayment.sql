CREATE TABLE repayment (

    repayment_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    repayment_method VARCHAR(50) NOT NULL UNIQUE

);

INSERT INTO repayment (repayment_method) VALUES
('Auto Debit'),
('UPI AutoPay'),
('Net Banking'),
('NEFT'),
('RTGS'),
('Cheque'),
('Cash Deposit');