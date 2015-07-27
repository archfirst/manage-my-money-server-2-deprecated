-- Drop foreign keys
ALTER TABLE transactions
  DROP CONSTRAINT transactions_account_id_foreign;
ALTER TABLE transactions
  DROP CONSTRAINT transactions_category_id_foreign;

-- Drop tables
DROP TABLE IF EXISTS accounts;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS transactions;

-- Create tables
CREATE TABLE accounts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(64) NOT NULL
);
ALTER TABLE accounts
  ADD CONSTRAINT accounts_name_unique UNIQUE (name);

CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  name VARCHAR(64) NOT NULL
);
ALTER TABLE categories
  ADD CONSTRAINT categories_name_unique UNIQUE (name);

CREATE TABLE transactions (
  id SERIAL PRIMARY KEY,
  txn_date TIMESTAMPTZ NOT NULL,
  payee VARCHAR(64) NOT NULL,
  memo VARCHAR(128),
  amount DECIMAL(19, 4) NOT NULL
);

-- Add foreign keys
ALTER TABLE transactions
  ADD COLUMN account_id INTEGER NOT NULL,
  ADD COLUMN category_id INTEGER NOT NULL;

ALTER TABLE transactions
  ADD CONSTRAINT transactions_account_id_foreign FOREIGN KEY (account_id)
  REFERENCES accounts (id);

ALTER TABLE transactions
  ADD CONSTRAINT transactions_category_id_foreign FOREIGN KEY (category_id)
  REFERENCES categories (id);
