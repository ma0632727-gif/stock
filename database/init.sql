-- Create Database
CREATE DATABASE accounting_system;

-- Create Accounts Table
CREATE TABLE accounts (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  code VARCHAR(20) UNIQUE NOT NULL,
  name VARCHAR(255) NOT NULL,
  name_ar VARCHAR(255),
  type VARCHAR(50) NOT NULL,
  sub_type VARCHAR(100),
  parent_id UUID REFERENCES accounts(id),
  balance DECIMAL(15, 2) DEFAULT 0,
  is_active BOOLEAN DEFAULT true,
  description TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Journals Table
CREATE TABLE journals (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  journal_number VARCHAR(50) UNIQUE NOT NULL,
  description TEXT,
  journal_date DATE DEFAULT CURRENT_DATE,
  status VARCHAR(50) DEFAULT 'DRAFT',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Transactions Table
CREATE TABLE transactions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  journal_id UUID NOT NULL REFERENCES journals(id),
  debit_account_id UUID NOT NULL REFERENCES accounts(id),
  credit_account_id UUID NOT NULL REFERENCES accounts(id),
  amount DECIMAL(15, 2) NOT NULL,
  description TEXT,
  transaction_date DATE DEFAULT CURRENT_DATE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Reports Table
CREATE TABLE reports (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  report_type VARCHAR(50) NOT NULL,
  account_id UUID REFERENCES accounts(id),
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  data JSONB,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Indexes
CREATE INDEX idx_accounts_type ON accounts(type);
CREATE INDEX idx_accounts_parent_id ON accounts(parent_id);
CREATE INDEX idx_transactions_journal_id ON transactions(journal_id);
CREATE INDEX idx_transactions_debit_account ON transactions(debit_account_id);
CREATE INDEX idx_transactions_credit_account ON transactions(credit_account_id);
CREATE INDEX idx_reports_report_type ON reports(report_type);
