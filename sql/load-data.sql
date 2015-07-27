-- -----------------------------------------------------------------------------
-- categories
-- -----------------------------------------------------------------------------
INSERT INTO categories (id, name) VALUES (1, 'Auto & Transport');
INSERT INTO categories (id, name) VALUES (2, 'Bills & Utilities');
INSERT INTO categories (id, name) VALUES (3, 'Business Services');
INSERT INTO categories (id, name) VALUES (4, 'Dividends');
INSERT INTO categories (id, name) VALUES (5, 'Education');
INSERT INTO categories (id, name) VALUES (6, 'Entertainment');
INSERT INTO categories (id, name) VALUES (7, 'Fees & Charges');
INSERT INTO categories (id, name) VALUES (8, 'Financial');
INSERT INTO categories (id, name) VALUES (9, 'Food & Dining');
INSERT INTO categories (id, name) VALUES (10, 'Gift & Donations');
INSERT INTO categories (id, name) VALUES (11, 'Health & Fitness');
INSERT INTO categories (id, name) VALUES (12, 'Home');
INSERT INTO categories (id, name) VALUES (13, 'Interest Income');
INSERT INTO categories (id, name) VALUES (14, 'Investments - Buy');
INSERT INTO categories (id, name) VALUES (15, 'Investments - Sell');
INSERT INTO categories (id, name) VALUES (16, 'Opening Balance');
INSERT INTO categories (id, name) VALUES (17, 'Personal Care');
INSERT INTO categories (id, name) VALUES (18, 'Salary');
INSERT INTO categories (id, name) VALUES (19, 'Shopping');
INSERT INTO categories (id, name) VALUES (20, 'Taxes');
INSERT INTO categories (id, name) VALUES (21, 'Transfer');
INSERT INTO categories (id, name) VALUES (22, 'Travel');
INSERT INTO categories (id, name) VALUES (23, 'Unallocated Expense');
INSERT INTO categories (id, name) VALUES (24, 'Unallocated Income');

SELECT setval('categories_id_seq', (SELECT MAX(id) FROM categories));

-- -----------------------------------------------------------------------------
-- accounts
-- -----------------------------------------------------------------------------
INSERT INTO accounts (id, name) VALUES (1, 'Cash');
INSERT INTO accounts (id, name) VALUES (2, 'BofA Checking');
INSERT INTO accounts (id, name) VALUES (3, 'E*Trade Savings');
INSERT INTO accounts (id, name) VALUES (4, 'UnitedHealthcare HSA');
INSERT INTO accounts (id, name) VALUES (5, 'FIA Card Services');
INSERT INTO accounts (id, name) VALUES (6, 'Amazon VISA');
INSERT INTO accounts (id, name) VALUES (7, 'AmEx Platinum');
INSERT INTO accounts (id, name) VALUES (8, 'E*Trade Brokerage');
INSERT INTO accounts (id, name) VALUES (9, 'Fidelity 401K');
INSERT INTO accounts (id, name) VALUES (10, 'Betterment');

SELECT setval('accounts_id_seq', (SELECT MAX(id) FROM accounts));

-- -----------------------------------------------------------------------------
-- transactions
-- -----------------------------------------------------------------------------
INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1, '2013-01-01 00:00:00Z', 'Opening Balance', NULL, 100, 1, 16);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2, '2013-01-01 00:00:00Z', 'Opening Balance', NULL, 1000, 2, 16);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (3, '2013-01-01 00:00:00Z', 'Opening Balance', NULL, 5000, 3, 16);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (4, '2013-01-01 00:00:00Z', 'Opening Balance', NULL, 3000, 4, 16);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (5, '2013-01-01 00:00:00Z', 'Opening Balance', NULL, -3600, 5, 16);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (6, '2013-01-01 00:00:00Z', 'Opening Balance', NULL, -200, 6, 16);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (7, '2013-01-01 00:00:00Z', 'Opening Balance', NULL, -800, 7, 16);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (8, '2013-01-01 00:00:00Z', 'Opening Balance', NULL, 50000, 8, 16);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (9, '2013-01-01 00:00:00Z', 'Opening Balance', NULL, 70000, 9, 16);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (10, '2013-01-01 00:00:00Z', 'Opening Balance', NULL, 10000, 10, 16);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (11, '2013-01-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (12, '2013-01-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (13, '2013-01-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (14, '2013-01-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (15, '2013-01-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (16, '2013-01-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (17, '2013-01-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (18, '2013-01-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (19, '2013-01-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (20, '2013-01-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (21, '2013-01-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (22, '2013-01-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (23, '2013-01-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (24, '2013-01-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (25, '2013-01-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (26, '2013-02-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (27, '2013-02-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (28, '2013-02-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (29, '2013-02-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (30, '2013-02-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (31, '2013-02-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (32, '2013-02-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (33, '2013-02-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (34, '2013-02-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (35, '2013-02-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (36, '2013-02-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (37, '2013-02-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (38, '2013-02-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (39, '2013-02-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (40, '2013-02-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (41, '2013-03-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (42, '2013-03-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (43, '2013-03-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (44, '2013-03-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (45, '2013-03-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (46, '2013-03-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (47, '2013-03-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (48, '2013-03-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (49, '2013-03-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (50, '2013-03-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (51, '2013-03-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (52, '2013-03-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (53, '2013-03-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (54, '2013-03-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (55, '2013-03-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (56, '2013-04-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (57, '2013-04-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (58, '2013-04-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (59, '2013-04-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (60, '2013-04-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (61, '2013-04-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (62, '2013-04-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (63, '2013-04-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (64, '2013-04-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (65, '2013-04-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (66, '2013-04-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (67, '2013-04-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (68, '2013-04-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (69, '2013-04-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (70, '2013-04-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (71, '2013-05-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (72, '2013-05-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (73, '2013-05-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (74, '2013-05-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (75, '2013-05-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (76, '2013-05-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (77, '2013-05-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (78, '2013-05-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (79, '2013-05-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (80, '2013-05-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (81, '2013-05-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (82, '2013-05-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (83, '2013-05-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (84, '2013-05-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (85, '2013-05-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (86, '2013-06-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (87, '2013-06-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (88, '2013-06-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (89, '2013-06-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (90, '2013-06-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (91, '2013-06-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (92, '2013-06-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (93, '2013-06-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (94, '2013-06-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (95, '2013-06-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (96, '2013-06-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (97, '2013-06-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (98, '2013-06-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (99, '2013-06-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (100, '2013-06-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (101, '2013-07-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (102, '2013-07-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (103, '2013-07-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (104, '2013-07-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (105, '2013-07-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (106, '2013-07-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (107, '2013-07-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (108, '2013-07-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (109, '2013-07-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (110, '2013-07-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (111, '2013-07-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (112, '2013-07-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (113, '2013-07-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (114, '2013-07-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (115, '2013-07-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (116, '2013-08-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (117, '2013-08-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (118, '2013-08-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (119, '2013-08-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (120, '2013-08-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (121, '2013-08-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (122, '2013-08-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (123, '2013-08-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (124, '2013-08-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (125, '2013-08-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (126, '2013-08-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (127, '2013-08-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (128, '2013-08-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (129, '2013-08-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (130, '2013-08-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (131, '2013-09-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (132, '2013-09-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (133, '2013-09-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (134, '2013-09-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (135, '2013-09-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (136, '2013-09-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (137, '2013-09-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (138, '2013-09-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (139, '2013-09-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (140, '2013-09-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (141, '2013-09-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (142, '2013-09-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (143, '2013-09-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (144, '2013-09-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (145, '2013-09-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (146, '2013-10-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (147, '2013-10-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (148, '2013-10-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (149, '2013-10-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (150, '2013-10-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (151, '2013-10-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (152, '2013-10-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (153, '2013-10-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (154, '2013-10-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (155, '2013-10-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (156, '2013-10-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (157, '2013-10-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (158, '2013-10-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (159, '2013-10-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (160, '2013-10-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (161, '2013-11-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (162, '2013-11-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (163, '2013-11-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (164, '2013-11-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (165, '2013-11-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (166, '2013-11-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (167, '2013-11-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (168, '2013-11-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (169, '2013-11-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (170, '2013-11-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (171, '2013-11-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (172, '2013-11-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (173, '2013-11-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (174, '2013-11-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (175, '2013-11-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (176, '2013-12-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (177, '2013-12-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (178, '2013-12-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (179, '2013-12-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (180, '2013-12-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (181, '2013-12-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (182, '2013-12-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (183, '2013-12-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (184, '2013-12-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (185, '2013-12-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (186, '2013-12-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (187, '2013-12-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (188, '2013-12-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (189, '2013-12-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (190, '2013-12-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (191, '2014-01-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (192, '2014-01-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (193, '2014-01-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (194, '2014-01-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (195, '2014-01-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (196, '2014-01-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (197, '2014-01-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (198, '2014-01-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (199, '2014-01-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (200, '2014-01-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (201, '2014-01-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (202, '2014-01-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (203, '2014-01-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (204, '2014-01-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (205, '2014-01-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (206, '2014-02-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (207, '2014-02-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (208, '2014-02-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (209, '2014-02-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (210, '2014-02-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (211, '2014-02-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (212, '2014-02-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (213, '2014-02-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (214, '2014-02-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (215, '2014-02-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (216, '2014-02-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (217, '2014-02-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (218, '2014-02-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (219, '2014-02-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (220, '2014-02-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (221, '2014-03-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (222, '2014-03-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (223, '2014-03-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (224, '2014-03-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (225, '2014-03-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (226, '2014-03-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (227, '2014-03-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (228, '2014-03-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (229, '2014-03-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (230, '2014-03-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (231, '2014-03-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (232, '2014-03-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (233, '2014-03-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (234, '2014-03-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (235, '2014-03-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (236, '2014-04-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (237, '2014-04-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (238, '2014-04-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (239, '2014-04-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (240, '2014-04-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (241, '2014-04-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (242, '2014-04-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (243, '2014-04-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (244, '2014-04-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (245, '2014-04-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (246, '2014-04-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (247, '2014-04-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (248, '2014-04-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (249, '2014-04-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (250, '2014-04-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (251, '2014-05-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (252, '2014-05-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (253, '2014-05-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (254, '2014-05-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (255, '2014-05-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (256, '2014-05-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (257, '2014-05-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (258, '2014-05-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (259, '2014-05-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (260, '2014-05-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (261, '2014-05-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (262, '2014-05-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (263, '2014-05-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (264, '2014-05-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (265, '2014-05-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (266, '2014-06-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (267, '2014-06-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (268, '2014-06-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (269, '2014-06-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (270, '2014-06-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (271, '2014-06-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (272, '2014-06-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (273, '2014-06-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (274, '2014-06-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (275, '2014-06-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (276, '2014-06-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (277, '2014-06-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (278, '2014-06-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (279, '2014-06-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (280, '2014-06-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (281, '2014-07-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (282, '2014-07-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (283, '2014-07-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (284, '2014-07-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (285, '2014-07-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (286, '2014-07-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (287, '2014-07-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (288, '2014-07-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (289, '2014-07-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (290, '2014-07-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (291, '2014-07-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (292, '2014-07-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (293, '2014-07-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (294, '2014-07-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (295, '2014-07-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (296, '2014-08-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (297, '2014-08-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (298, '2014-08-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (299, '2014-08-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (300, '2014-08-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (301, '2014-08-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (302, '2014-08-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (303, '2014-08-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (304, '2014-08-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (305, '2014-08-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (306, '2014-08-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (307, '2014-08-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (308, '2014-08-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (309, '2014-08-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (310, '2014-08-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (311, '2014-09-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (312, '2014-09-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (313, '2014-09-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (314, '2014-09-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (315, '2014-09-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (316, '2014-09-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (317, '2014-09-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (318, '2014-09-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (319, '2014-09-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (320, '2014-09-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (321, '2014-09-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (322, '2014-09-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (323, '2014-09-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (324, '2014-09-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (325, '2014-09-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (326, '2014-10-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (327, '2014-10-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (328, '2014-10-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (329, '2014-10-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (330, '2014-10-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (331, '2014-10-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (332, '2014-10-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (333, '2014-10-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (334, '2014-10-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (335, '2014-10-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (336, '2014-10-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (337, '2014-10-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (338, '2014-10-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (339, '2014-10-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (340, '2014-10-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (341, '2014-11-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (342, '2014-11-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (343, '2014-11-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (344, '2014-11-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (345, '2014-11-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (346, '2014-11-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (347, '2014-11-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (348, '2014-11-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (349, '2014-11-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (350, '2014-11-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (351, '2014-11-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (352, '2014-11-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (353, '2014-11-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (354, '2014-11-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (355, '2014-11-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (356, '2014-12-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (357, '2014-12-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (358, '2014-12-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (359, '2014-12-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (360, '2014-12-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (361, '2014-12-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (362, '2014-12-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (363, '2014-12-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (364, '2014-12-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (365, '2014-12-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (366, '2014-12-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (367, '2014-12-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (368, '2014-12-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (369, '2014-12-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (370, '2014-12-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (371, '2015-01-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (372, '2015-01-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (373, '2015-01-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (374, '2015-01-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (375, '2015-01-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (376, '2015-01-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (377, '2015-01-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (378, '2015-01-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (379, '2015-01-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (380, '2015-01-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (381, '2015-01-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (382, '2015-01-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (383, '2015-01-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (384, '2015-01-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (385, '2015-01-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (386, '2015-02-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (387, '2015-02-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (388, '2015-02-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (389, '2015-02-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (390, '2015-02-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (391, '2015-02-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (392, '2015-02-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (393, '2015-02-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (394, '2015-02-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (395, '2015-02-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (396, '2015-02-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (397, '2015-02-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (398, '2015-02-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (399, '2015-02-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (400, '2015-02-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (401, '2015-03-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (402, '2015-03-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (403, '2015-03-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (404, '2015-03-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (405, '2015-03-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (406, '2015-03-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (407, '2015-03-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (408, '2015-03-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (409, '2015-03-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (410, '2015-03-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (411, '2015-03-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (412, '2015-03-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (413, '2015-03-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (414, '2015-03-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (415, '2015-03-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (416, '2015-04-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (417, '2015-04-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (418, '2015-04-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (419, '2015-04-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (420, '2015-04-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (421, '2015-04-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (422, '2015-04-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (423, '2015-04-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (424, '2015-04-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (425, '2015-04-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (426, '2015-04-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (427, '2015-04-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (428, '2015-04-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (429, '2015-04-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (430, '2015-04-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (431, '2015-05-28 00:00:00Z', 'Hooli', NULL, 8000, 3, 18);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (432, '2015-05-28 00:00:00Z', 'IRS', NULL, -1200, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (433, '2015-05-28 00:00:00Z', 'State of California', NULL, -800, 3, 20);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (434, '2015-05-28 00:00:00Z', 'Transfer to HSA', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (435, '2015-05-28 00:00:00Z', 'Transfer to 401K', NULL, -1000, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (436, '2015-05-28 00:00:00Z', 'Transfer to E*Trade', NULL, -800, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (437, '2015-05-28 00:00:00Z', 'Transfer to Betterment', NULL, -500, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (438, '2015-05-28 00:00:00Z', 'Transfer to Checking', NULL, -2700, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (439, '2015-05-28 00:00:00Z', 'Transfer to Cash', NULL, -200, 3, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (440, '2015-05-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 4, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (441, '2015-05-28 00:00:00Z', 'Transfer from Savings', NULL, 1000, 9, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (442, '2015-05-28 00:00:00Z', 'Transfer from Savings', NULL, 800, 8, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (443, '2015-05-28 00:00:00Z', 'Transfer from Savings', NULL, 500, 10, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (444, '2015-05-28 00:00:00Z', 'Transfer from Savings', NULL, 2700, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (445, '2015-05-28 00:00:00Z', 'Transfer from Savings', NULL, 200, 1, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (446, '2013-01-01 00:00:00Z', 'Stop&Shop', NULL, -70.74, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (447, '2013-01-04 00:00:00Z', 'Whole Foods', NULL, -75.9, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (448, '2013-01-06 00:00:00Z', 'Whole Foods', NULL, -106.39, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (449, '2013-01-07 00:00:00Z', 'Chevron', 'Gas', -35.23, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (450, '2013-01-02 00:00:00Z', 'Best Cleaners', 'Laundry', -19.51, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (451, '2013-01-01 00:00:00Z', 'Misc. Expenses', NULL, -9.64, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (452, '2013-01-03 00:00:00Z', 'Misc. Expenses', NULL, -10.73, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (453, '2013-01-05 00:00:00Z', 'Misc. Expenses', NULL, -9.7, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (454, '2013-01-07 00:00:00Z', 'Misc. Expenses', NULL, -8.55, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (455, '2013-01-08 00:00:00Z', 'Stop&Shop', NULL, -131.72, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (456, '2013-01-11 00:00:00Z', 'Whole Foods', NULL, -56.33, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (457, '2013-01-13 00:00:00Z', 'Whole Foods', NULL, -110.42, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (458, '2013-01-14 00:00:00Z', 'Chevron', 'Gas', -40.63, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (459, '2013-01-09 00:00:00Z', 'Best Cleaners', 'Laundry', -28.76, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (460, '2013-01-08 00:00:00Z', 'Misc. Expenses', NULL, -7.83, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (461, '2013-01-10 00:00:00Z', 'Misc. Expenses', NULL, -14.2, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (462, '2013-01-12 00:00:00Z', 'Misc. Expenses', NULL, -9.96, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (463, '2013-01-14 00:00:00Z', 'Misc. Expenses', NULL, -6.81, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (464, '2013-01-15 00:00:00Z', 'Stop&Shop', NULL, -129.89, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (465, '2013-01-18 00:00:00Z', 'Whole Foods', NULL, -136.87, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (466, '2013-01-20 00:00:00Z', 'Whole Foods', NULL, -116, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (467, '2013-01-21 00:00:00Z', 'Chevron', 'Gas', -39.94, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (468, '2013-01-16 00:00:00Z', 'Best Cleaners', 'Laundry', -20.6, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (469, '2013-01-15 00:00:00Z', 'Misc. Expenses', NULL, -9.25, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (470, '2013-01-17 00:00:00Z', 'Misc. Expenses', NULL, -11.7, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (471, '2013-01-19 00:00:00Z', 'Misc. Expenses', NULL, -8.75, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (472, '2013-01-21 00:00:00Z', 'Misc. Expenses', NULL, -6.56, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (473, '2013-01-22 00:00:00Z', 'Stop&Shop', NULL, -138.81, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (474, '2013-01-25 00:00:00Z', 'Whole Foods', NULL, -92.36, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (475, '2013-01-27 00:00:00Z', 'Whole Foods', NULL, -95.07, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (476, '2013-01-28 00:00:00Z', 'Chevron', 'Gas', -28.37, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (477, '2013-01-23 00:00:00Z', 'Best Cleaners', 'Laundry', -29.64, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (478, '2013-01-22 00:00:00Z', 'Misc. Expenses', NULL, -8.13, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (479, '2013-01-24 00:00:00Z', 'Misc. Expenses', NULL, -13.16, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (480, '2013-01-26 00:00:00Z', 'Misc. Expenses', NULL, -11.23, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (481, '2013-01-28 00:00:00Z', 'Misc. Expenses', NULL, -11.26, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (482, '2013-01-11 00:00:00Z', 'Amazon', NULL, -65.81, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (483, '2013-01-21 00:00:00Z', 'Amazon', 'Software', -46.94, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (484, '2013-01-26 00:00:00Z', 'Amazon', 'AWS', -53.11, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (485, '2013-01-21 00:00:00Z', 'Transfer to AmEx', NULL, -1119.83, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (486, '2013-01-21 00:00:00Z', 'Transfer to Amazon', NULL, -201.01, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (487, '2013-01-21 00:00:00Z', 'Transfer to FIA', NULL, -617.02, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (488, '2013-01-21 00:00:00Z', 'Transfer from Checking', NULL, 1119.83, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (489, '2013-01-21 00:00:00Z', 'Transfer from Checking', NULL, 201.01, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (490, '2013-01-21 00:00:00Z', 'Transfer from Checking', NULL, 617.02, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (491, '2013-01-26 00:00:00Z', 'National Grid', 'Electic bill', -197.3, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (492, '2013-01-26 00:00:00Z', 'Orange County', 'Water bill', -198.9, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (493, '2013-01-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (494, '2013-01-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (495, '2013-01-26 00:00:00Z', 'BofA', 'ATM charges', -12.47, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (496, '2013-01-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (497, '2013-01-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (498, '2013-01-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (499, '2013-01-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (500, '2013-01-26 00:00:00Z', 'FIA Card Services', 'Cashback', 168.87, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (501, '2013-01-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -122.67, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (502, '2013-01-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -273.78, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (503, '2013-02-01 00:00:00Z', 'Stop&Shop', NULL, -68.66, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (504, '2013-02-04 00:00:00Z', 'Whole Foods', NULL, -63.17, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (505, '2013-02-06 00:00:00Z', 'Whole Foods', NULL, -61.69, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (506, '2013-02-07 00:00:00Z', 'Chevron', 'Gas', -34.37, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (507, '2013-02-02 00:00:00Z', 'Best Cleaners', 'Laundry', -16.41, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (508, '2013-02-01 00:00:00Z', 'Misc. Expenses', NULL, -7.97, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (509, '2013-02-03 00:00:00Z', 'Misc. Expenses', NULL, -7.61, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (510, '2013-02-05 00:00:00Z', 'Misc. Expenses', NULL, -14.06, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (511, '2013-02-07 00:00:00Z', 'Misc. Expenses', NULL, -8.31, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (512, '2013-02-08 00:00:00Z', 'Stop&Shop', NULL, -149.75, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (513, '2013-02-11 00:00:00Z', 'Whole Foods', NULL, -69.69, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (514, '2013-02-13 00:00:00Z', 'Whole Foods', NULL, -109.38, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (515, '2013-02-14 00:00:00Z', 'Chevron', 'Gas', -28.64, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (516, '2013-02-09 00:00:00Z', 'Best Cleaners', 'Laundry', -18.26, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (517, '2013-02-08 00:00:00Z', 'Misc. Expenses', NULL, -9.1, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (518, '2013-02-10 00:00:00Z', 'Misc. Expenses', NULL, -7.4, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (519, '2013-02-12 00:00:00Z', 'Misc. Expenses', NULL, -12.59, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (520, '2013-02-14 00:00:00Z', 'Misc. Expenses', NULL, -7.06, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (521, '2013-02-15 00:00:00Z', 'Stop&Shop', NULL, -79.33, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (522, '2013-02-18 00:00:00Z', 'Whole Foods', NULL, -88.36, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (523, '2013-02-20 00:00:00Z', 'Whole Foods', NULL, -70.87, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (524, '2013-02-21 00:00:00Z', 'Chevron', 'Gas', -43.7, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (525, '2013-02-16 00:00:00Z', 'Best Cleaners', 'Laundry', -28.08, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (526, '2013-02-15 00:00:00Z', 'Misc. Expenses', NULL, -8.71, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (527, '2013-02-17 00:00:00Z', 'Misc. Expenses', NULL, -13.91, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (528, '2013-02-19 00:00:00Z', 'Misc. Expenses', NULL, -7.78, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (529, '2013-02-21 00:00:00Z', 'Misc. Expenses', NULL, -5.62, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (530, '2013-02-22 00:00:00Z', 'Stop&Shop', NULL, -77.11, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (531, '2013-02-25 00:00:00Z', 'Whole Foods', NULL, -66.68, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (532, '2013-02-27 00:00:00Z', 'Whole Foods', NULL, -121.41, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (533, '2013-02-28 00:00:00Z', 'Chevron', 'Gas', -26.72, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (534, '2013-02-23 00:00:00Z', 'Best Cleaners', 'Laundry', -19.94, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (535, '2013-02-22 00:00:00Z', 'Misc. Expenses', NULL, -11.2, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (536, '2013-02-24 00:00:00Z', 'Misc. Expenses', NULL, -7.28, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (537, '2013-02-26 00:00:00Z', 'Misc. Expenses', NULL, -11.46, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (538, '2013-02-28 00:00:00Z', 'Misc. Expenses', NULL, -7.28, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (539, '2013-02-11 00:00:00Z', 'Amazon', NULL, -49.42, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (540, '2013-02-21 00:00:00Z', 'Amazon', 'Software', -51.17, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (541, '2013-02-26 00:00:00Z', 'Amazon', 'AWS', -105.46, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (542, '2013-02-21 00:00:00Z', 'Transfer to AmEx', NULL, -1175.42, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (543, '2013-02-21 00:00:00Z', 'Transfer to Amazon', NULL, -191.09, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (544, '2013-02-21 00:00:00Z', 'Transfer to FIA', NULL, -562.21, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (545, '2013-02-21 00:00:00Z', 'Transfer from Checking', NULL, 1175.42, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (546, '2013-02-21 00:00:00Z', 'Transfer from Checking', NULL, 191.09, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (547, '2013-02-21 00:00:00Z', 'Transfer from Checking', NULL, 562.21, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (548, '2013-02-26 00:00:00Z', 'National Grid', 'Electic bill', -108.41, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (549, '2013-02-26 00:00:00Z', 'Orange County', 'Water bill', -158.28, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (550, '2013-02-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (551, '2013-02-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (552, '2013-02-26 00:00:00Z', 'BofA', 'ATM charges', -10.23, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (553, '2013-02-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (554, '2013-02-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (555, '2013-02-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (556, '2013-02-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (557, '2013-02-26 00:00:00Z', 'FIA Card Services', 'Cashback', 109.90, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (558, '2013-02-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -341.32, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (559, '2013-02-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -180.37, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (560, '2013-03-01 00:00:00Z', 'Stop&Shop', NULL, -101.79, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (561, '2013-03-04 00:00:00Z', 'Whole Foods', NULL, -135.63, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (562, '2013-03-06 00:00:00Z', 'Whole Foods', NULL, -88.58, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (563, '2013-03-07 00:00:00Z', 'Chevron', 'Gas', -45.95, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (564, '2013-03-02 00:00:00Z', 'Best Cleaners', 'Laundry', -23.51, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (565, '2013-03-01 00:00:00Z', 'Misc. Expenses', NULL, -5.21, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (566, '2013-03-03 00:00:00Z', 'Misc. Expenses', NULL, -7.68, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (567, '2013-03-05 00:00:00Z', 'Misc. Expenses', NULL, -10.27, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (568, '2013-03-07 00:00:00Z', 'Misc. Expenses', NULL, -6.21, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (569, '2013-03-08 00:00:00Z', 'Stop&Shop', NULL, -69.34, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (570, '2013-03-11 00:00:00Z', 'Whole Foods', NULL, -139.29, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (571, '2013-03-13 00:00:00Z', 'Whole Foods', NULL, -66.96, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (572, '2013-03-14 00:00:00Z', 'Chevron', 'Gas', -29.19, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (573, '2013-03-09 00:00:00Z', 'Best Cleaners', 'Laundry', -13.24, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (574, '2013-03-08 00:00:00Z', 'Misc. Expenses', NULL, -9.98, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (575, '2013-03-10 00:00:00Z', 'Misc. Expenses', NULL, -13.44, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (576, '2013-03-12 00:00:00Z', 'Misc. Expenses', NULL, -5.85, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (577, '2013-03-14 00:00:00Z', 'Misc. Expenses', NULL, -8.51, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (578, '2013-03-15 00:00:00Z', 'Stop&Shop', NULL, -84.44, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (579, '2013-03-18 00:00:00Z', 'Whole Foods', NULL, -89.03, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (580, '2013-03-20 00:00:00Z', 'Whole Foods', NULL, -126.61, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (581, '2013-03-21 00:00:00Z', 'Chevron', 'Gas', -35.04, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (582, '2013-03-16 00:00:00Z', 'Best Cleaners', 'Laundry', -12.03, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (583, '2013-03-15 00:00:00Z', 'Misc. Expenses', NULL, -9.85, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (584, '2013-03-17 00:00:00Z', 'Misc. Expenses', NULL, -12.6, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (585, '2013-03-19 00:00:00Z', 'Misc. Expenses', NULL, -6.37, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (586, '2013-03-21 00:00:00Z', 'Misc. Expenses', NULL, -6.84, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (587, '2013-03-22 00:00:00Z', 'Stop&Shop', NULL, -70.9, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (588, '2013-03-25 00:00:00Z', 'Whole Foods', NULL, -97.43, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (589, '2013-03-27 00:00:00Z', 'Whole Foods', NULL, -147.81, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (590, '2013-03-28 00:00:00Z', 'Chevron', 'Gas', -35.82, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (591, '2013-03-23 00:00:00Z', 'Best Cleaners', 'Laundry', -14.08, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (592, '2013-03-22 00:00:00Z', 'Misc. Expenses', NULL, -6.64, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (593, '2013-03-24 00:00:00Z', 'Misc. Expenses', NULL, -14.25, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (594, '2013-03-26 00:00:00Z', 'Misc. Expenses', NULL, -10.23, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (595, '2013-03-28 00:00:00Z', 'Misc. Expenses', NULL, -8.81, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (596, '2013-03-11 00:00:00Z', 'Amazon', NULL, -44.75, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (597, '2013-03-21 00:00:00Z', 'Amazon', 'Software', -71.18, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (598, '2013-03-26 00:00:00Z', 'Amazon', 'AWS', -109.09, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (599, '2013-03-21 00:00:00Z', 'Transfer to AmEx', NULL, -1176.72, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (600, '2013-03-21 00:00:00Z', 'Transfer to Amazon', NULL, -181.32, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (601, '2013-03-21 00:00:00Z', 'Transfer to FIA', NULL, -540.38, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (602, '2013-03-21 00:00:00Z', 'Transfer from Checking', NULL, 1176.72, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (603, '2013-03-21 00:00:00Z', 'Transfer from Checking', NULL, 181.32, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (604, '2013-03-21 00:00:00Z', 'Transfer from Checking', NULL, 540.38, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (605, '2013-03-26 00:00:00Z', 'National Grid', 'Electic bill', -150.59, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (606, '2013-03-26 00:00:00Z', 'Orange County', 'Water bill', -128.82, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (607, '2013-03-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (608, '2013-03-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (609, '2013-03-26 00:00:00Z', 'BofA', 'ATM charges', -24.51, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (610, '2013-03-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (611, '2013-03-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (612, '2013-03-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (613, '2013-03-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (614, '2013-03-26 00:00:00Z', 'FIA Card Services', 'Cashback', 139.00, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (615, '2013-03-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -250.83, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (616, '2013-03-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -259.08, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (617, '2013-04-01 00:00:00Z', 'Stop&Shop', NULL, -140.85, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (618, '2013-04-04 00:00:00Z', 'Whole Foods', NULL, -95.48, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (619, '2013-04-06 00:00:00Z', 'Whole Foods', NULL, -59.36, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (620, '2013-04-07 00:00:00Z', 'Chevron', 'Gas', -44.87, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (621, '2013-04-02 00:00:00Z', 'Best Cleaners', 'Laundry', -25.04, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (622, '2013-04-01 00:00:00Z', 'Misc. Expenses', NULL, -6.08, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (623, '2013-04-03 00:00:00Z', 'Misc. Expenses', NULL, -7.56, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (624, '2013-04-05 00:00:00Z', 'Misc. Expenses', NULL, -6.47, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (625, '2013-04-07 00:00:00Z', 'Misc. Expenses', NULL, -5.78, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (626, '2013-04-08 00:00:00Z', 'Stop&Shop', NULL, -84.29, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (627, '2013-04-11 00:00:00Z', 'Whole Foods', NULL, -51.35, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (628, '2013-04-13 00:00:00Z', 'Whole Foods', NULL, -147.27, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (629, '2013-04-14 00:00:00Z', 'Chevron', 'Gas', -33.86, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (630, '2013-04-09 00:00:00Z', 'Best Cleaners', 'Laundry', -21.06, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (631, '2013-04-08 00:00:00Z', 'Misc. Expenses', NULL, -13.14, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (632, '2013-04-10 00:00:00Z', 'Misc. Expenses', NULL, -14.41, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (633, '2013-04-12 00:00:00Z', 'Misc. Expenses', NULL, -13.04, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (634, '2013-04-14 00:00:00Z', 'Misc. Expenses', NULL, -9.41, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (635, '2013-04-15 00:00:00Z', 'Stop&Shop', NULL, -99.82, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (636, '2013-04-18 00:00:00Z', 'Whole Foods', NULL, -148.38, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (637, '2013-04-20 00:00:00Z', 'Whole Foods', NULL, -80.21, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (638, '2013-04-21 00:00:00Z', 'Chevron', 'Gas', -44.91, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (639, '2013-04-16 00:00:00Z', 'Best Cleaners', 'Laundry', -11.35, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (640, '2013-04-15 00:00:00Z', 'Misc. Expenses', NULL, -5.24, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (641, '2013-04-17 00:00:00Z', 'Misc. Expenses', NULL, -10.55, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (642, '2013-04-19 00:00:00Z', 'Misc. Expenses', NULL, -5.46, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (643, '2013-04-21 00:00:00Z', 'Misc. Expenses', NULL, -10.73, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (644, '2013-04-22 00:00:00Z', 'Stop&Shop', NULL, -89.68, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (645, '2013-04-25 00:00:00Z', 'Whole Foods', NULL, -66.64, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (646, '2013-04-27 00:00:00Z', 'Whole Foods', NULL, -148.77, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (647, '2013-04-28 00:00:00Z', 'Chevron', 'Gas', -26.48, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (648, '2013-04-23 00:00:00Z', 'Best Cleaners', 'Laundry', -27.81, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (649, '2013-04-22 00:00:00Z', 'Misc. Expenses', NULL, -13.7, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (650, '2013-04-24 00:00:00Z', 'Misc. Expenses', NULL, -13.09, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (651, '2013-04-26 00:00:00Z', 'Misc. Expenses', NULL, -14.66, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (652, '2013-04-28 00:00:00Z', 'Misc. Expenses', NULL, -11.69, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (653, '2013-04-11 00:00:00Z', 'Amazon', NULL, -76.98, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (654, '2013-04-21 00:00:00Z', 'Amazon', 'Software', -72.49, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (655, '2013-04-26 00:00:00Z', 'Amazon', 'AWS', -73.97, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (656, '2013-04-21 00:00:00Z', 'Transfer to AmEx', NULL, -1143.99, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (657, '2013-04-21 00:00:00Z', 'Transfer to Amazon', NULL, -187, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (658, '2013-04-21 00:00:00Z', 'Transfer to FIA', NULL, -571.55, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (659, '2013-04-21 00:00:00Z', 'Transfer from Checking', NULL, 1143.99, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (660, '2013-04-21 00:00:00Z', 'Transfer from Checking', NULL, 187.00, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (661, '2013-04-21 00:00:00Z', 'Transfer from Checking', NULL, 571.55, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (662, '2013-04-26 00:00:00Z', 'National Grid', 'Electic bill', -198.7, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (663, '2013-04-26 00:00:00Z', 'Orange County', 'Water bill', -134.67, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (664, '2013-04-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (665, '2013-04-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (666, '2013-04-26 00:00:00Z', 'BofA', 'ATM charges', -20.77, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (667, '2013-04-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (668, '2013-04-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (669, '2013-04-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (670, '2013-04-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (671, '2013-04-26 00:00:00Z', 'FIA Card Services', 'Cashback', 174.42, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (672, '2013-04-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -228.25, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (673, '2013-04-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -315.94, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (674, '2013-05-01 00:00:00Z', 'Stop&Shop', NULL, -72.83, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (675, '2013-05-04 00:00:00Z', 'Whole Foods', NULL, -134.79, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (676, '2013-05-06 00:00:00Z', 'Whole Foods', NULL, -107.93, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (677, '2013-05-07 00:00:00Z', 'Chevron', 'Gas', -20.88, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (678, '2013-05-02 00:00:00Z', 'Best Cleaners', 'Laundry', -24.73, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (679, '2013-05-01 00:00:00Z', 'Misc. Expenses', NULL, -7.66, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (680, '2013-05-03 00:00:00Z', 'Misc. Expenses', NULL, -14.97, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (681, '2013-05-05 00:00:00Z', 'Misc. Expenses', NULL, -10.33, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (682, '2013-05-07 00:00:00Z', 'Misc. Expenses', NULL, -9.28, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (683, '2013-05-08 00:00:00Z', 'Stop&Shop', NULL, -83.38, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (684, '2013-05-11 00:00:00Z', 'Whole Foods', NULL, -145.6, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (685, '2013-05-13 00:00:00Z', 'Whole Foods', NULL, -143.63, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (686, '2013-05-14 00:00:00Z', 'Chevron', 'Gas', -23.08, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (687, '2013-05-09 00:00:00Z', 'Best Cleaners', 'Laundry', -29.15, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (688, '2013-05-08 00:00:00Z', 'Misc. Expenses', NULL, -11.17, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (689, '2013-05-10 00:00:00Z', 'Misc. Expenses', NULL, -6.89, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (690, '2013-05-12 00:00:00Z', 'Misc. Expenses', NULL, -12.76, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (691, '2013-05-14 00:00:00Z', 'Misc. Expenses', NULL, -5.83, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (692, '2013-05-15 00:00:00Z', 'Stop&Shop', NULL, -138.39, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (693, '2013-05-18 00:00:00Z', 'Whole Foods', NULL, -85.39, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (694, '2013-05-20 00:00:00Z', 'Whole Foods', NULL, -79.43, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (695, '2013-05-21 00:00:00Z', 'Chevron', 'Gas', -28.09, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (696, '2013-05-16 00:00:00Z', 'Best Cleaners', 'Laundry', -10.44, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (697, '2013-05-15 00:00:00Z', 'Misc. Expenses', NULL, -14.27, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (698, '2013-05-17 00:00:00Z', 'Misc. Expenses', NULL, -11.82, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (699, '2013-05-19 00:00:00Z', 'Misc. Expenses', NULL, -10.82, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (700, '2013-05-21 00:00:00Z', 'Misc. Expenses', NULL, -7.25, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (701, '2013-05-22 00:00:00Z', 'Stop&Shop', NULL, -71.34, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (702, '2013-05-25 00:00:00Z', 'Whole Foods', NULL, -63.55, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (703, '2013-05-27 00:00:00Z', 'Whole Foods', NULL, -140, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (704, '2013-05-28 00:00:00Z', 'Chevron', 'Gas', -24.65, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (705, '2013-05-23 00:00:00Z', 'Best Cleaners', 'Laundry', -17.6, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (706, '2013-05-22 00:00:00Z', 'Misc. Expenses', NULL, -10.05, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (707, '2013-05-24 00:00:00Z', 'Misc. Expenses', NULL, -10.68, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (708, '2013-05-26 00:00:00Z', 'Misc. Expenses', NULL, -5.89, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (709, '2013-05-28 00:00:00Z', 'Misc. Expenses', NULL, -9.66, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (710, '2013-05-11 00:00:00Z', 'Amazon', NULL, -71.62, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (711, '2013-05-21 00:00:00Z', 'Amazon', 'Software', -101.07, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (712, '2013-05-26 00:00:00Z', 'Amazon', 'AWS', -90.4, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (713, '2013-05-21 00:00:00Z', 'Transfer to AmEx', NULL, -1149.18, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (714, '2013-05-21 00:00:00Z', 'Transfer to Amazon', NULL, -208.85, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (715, '2013-05-21 00:00:00Z', 'Transfer to FIA', NULL, -566.8, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (716, '2013-05-21 00:00:00Z', 'Transfer from Checking', NULL, 1149.18, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (717, '2013-05-21 00:00:00Z', 'Transfer from Checking', NULL, 208.85, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (718, '2013-05-21 00:00:00Z', 'Transfer from Checking', NULL, 566.80, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (719, '2013-05-26 00:00:00Z', 'National Grid', 'Electic bill', -172.74, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (720, '2013-05-26 00:00:00Z', 'Orange County', 'Water bill', -137.52, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (721, '2013-05-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (722, '2013-05-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (723, '2013-05-26 00:00:00Z', 'BofA', 'ATM charges', -20.11, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (724, '2013-05-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (725, '2013-05-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (726, '2013-05-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (727, '2013-05-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (728, '2013-05-26 00:00:00Z', 'FIA Card Services', 'Cashback', 109.59, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (729, '2013-05-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -125.12, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (730, '2013-05-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -233.6, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (731, '2013-06-01 00:00:00Z', 'Stop&Shop', NULL, -98.08, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (732, '2013-06-04 00:00:00Z', 'Whole Foods', NULL, -123.17, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (733, '2013-06-06 00:00:00Z', 'Whole Foods', NULL, -115.6, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (734, '2013-06-07 00:00:00Z', 'Chevron', 'Gas', -36.52, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (735, '2013-06-02 00:00:00Z', 'Best Cleaners', 'Laundry', -24.35, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (736, '2013-06-01 00:00:00Z', 'Misc. Expenses', NULL, -6.41, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (737, '2013-06-03 00:00:00Z', 'Misc. Expenses', NULL, -12.36, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (738, '2013-06-05 00:00:00Z', 'Misc. Expenses', NULL, -6.63, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (739, '2013-06-07 00:00:00Z', 'Misc. Expenses', NULL, -9.17, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (740, '2013-06-08 00:00:00Z', 'Stop&Shop', NULL, -92.93, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (741, '2013-06-11 00:00:00Z', 'Whole Foods', NULL, -102.97, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (742, '2013-06-13 00:00:00Z', 'Whole Foods', NULL, -79.27, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (743, '2013-06-14 00:00:00Z', 'Chevron', 'Gas', -40.09, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (744, '2013-06-09 00:00:00Z', 'Best Cleaners', 'Laundry', -25.38, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (745, '2013-06-08 00:00:00Z', 'Misc. Expenses', NULL, -9.62, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (746, '2013-06-10 00:00:00Z', 'Misc. Expenses', NULL, -12.32, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (747, '2013-06-12 00:00:00Z', 'Misc. Expenses', NULL, -10.09, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (748, '2013-06-14 00:00:00Z', 'Misc. Expenses', NULL, -7.97, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (749, '2013-06-15 00:00:00Z', 'Stop&Shop', NULL, -62.58, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (750, '2013-06-18 00:00:00Z', 'Whole Foods', NULL, -64.91, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (751, '2013-06-20 00:00:00Z', 'Whole Foods', NULL, -115.62, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (752, '2013-06-21 00:00:00Z', 'Chevron', 'Gas', -37.84, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (753, '2013-06-16 00:00:00Z', 'Best Cleaners', 'Laundry', -12.48, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (754, '2013-06-15 00:00:00Z', 'Misc. Expenses', NULL, -7.13, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (755, '2013-06-17 00:00:00Z', 'Misc. Expenses', NULL, -13.61, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (756, '2013-06-19 00:00:00Z', 'Misc. Expenses', NULL, -9.87, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (757, '2013-06-21 00:00:00Z', 'Misc. Expenses', NULL, -13.68, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (758, '2013-06-22 00:00:00Z', 'Stop&Shop', NULL, -53.11, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (759, '2013-06-25 00:00:00Z', 'Whole Foods', NULL, -133.35, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (760, '2013-06-27 00:00:00Z', 'Whole Foods', NULL, -139.64, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (761, '2013-06-28 00:00:00Z', 'Chevron', 'Gas', -46.23, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (762, '2013-06-23 00:00:00Z', 'Best Cleaners', 'Laundry', -19.59, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (763, '2013-06-22 00:00:00Z', 'Misc. Expenses', NULL, -7.69, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (764, '2013-06-24 00:00:00Z', 'Misc. Expenses', NULL, -7.43, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (765, '2013-06-26 00:00:00Z', 'Misc. Expenses', NULL, -11.77, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (766, '2013-06-28 00:00:00Z', 'Misc. Expenses', NULL, -5.95, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (767, '2013-06-11 00:00:00Z', 'Amazon', NULL, -46.35, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (768, '2013-06-21 00:00:00Z', 'Amazon', 'Software', -41.47, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (769, '2013-06-26 00:00:00Z', 'Amazon', 'AWS', -117.33, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (770, '2013-06-21 00:00:00Z', 'Transfer to AmEx', NULL, -1109.47, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (771, '2013-06-21 00:00:00Z', 'Transfer to Amazon', NULL, -197.65, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (772, '2013-06-21 00:00:00Z', 'Transfer to FIA', NULL, -573.61, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (773, '2013-06-21 00:00:00Z', 'Transfer from Checking', NULL, 1109.47, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (774, '2013-06-21 00:00:00Z', 'Transfer from Checking', NULL, 197.65, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (775, '2013-06-21 00:00:00Z', 'Transfer from Checking', NULL, 573.61, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (776, '2013-06-26 00:00:00Z', 'National Grid', 'Electic bill', -149.89, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (777, '2013-06-26 00:00:00Z', 'Orange County', 'Water bill', -155.46, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (778, '2013-06-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (779, '2013-06-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (780, '2013-06-26 00:00:00Z', 'BofA', 'ATM charges', -10.42, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (781, '2013-06-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (782, '2013-06-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (783, '2013-06-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (784, '2013-06-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (785, '2013-06-26 00:00:00Z', 'FIA Card Services', 'Cashback', 114.23, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (786, '2013-06-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -286.61, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (787, '2013-06-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -163.68, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (788, '2013-06-07 00:00:00Z', 'United Airlines', NULL, -800.95, 5, 22);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (789, '2013-06-07 00:00:00Z', 'Hilton', NULL, -962.43, 5, 22);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (790, '2013-07-01 00:00:00Z', 'Stop&Shop', NULL, -97.38, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (791, '2013-07-04 00:00:00Z', 'Whole Foods', NULL, -134.75, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (792, '2013-07-06 00:00:00Z', 'Whole Foods', NULL, -120.13, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (793, '2013-07-07 00:00:00Z', 'Chevron', 'Gas', -24.68, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (794, '2013-07-02 00:00:00Z', 'Best Cleaners', 'Laundry', -12.42, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (795, '2013-07-01 00:00:00Z', 'Misc. Expenses', NULL, -8.23, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (796, '2013-07-03 00:00:00Z', 'Misc. Expenses', NULL, -13.55, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (797, '2013-07-05 00:00:00Z', 'Misc. Expenses', NULL, -5.76, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (798, '2013-07-07 00:00:00Z', 'Misc. Expenses', NULL, -12.97, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (799, '2013-07-08 00:00:00Z', 'Stop&Shop', NULL, -73.59, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (800, '2013-07-11 00:00:00Z', 'Whole Foods', NULL, -108.44, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (801, '2013-07-13 00:00:00Z', 'Whole Foods', NULL, -97.38, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (802, '2013-07-14 00:00:00Z', 'Chevron', 'Gas', -22.07, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (803, '2013-07-09 00:00:00Z', 'Best Cleaners', 'Laundry', -18.27, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (804, '2013-07-08 00:00:00Z', 'Misc. Expenses', NULL, -6.56, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (805, '2013-07-10 00:00:00Z', 'Misc. Expenses', NULL, -11.76, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (806, '2013-07-12 00:00:00Z', 'Misc. Expenses', NULL, -6.34, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (807, '2013-07-14 00:00:00Z', 'Misc. Expenses', NULL, -10.33, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (808, '2013-07-15 00:00:00Z', 'Stop&Shop', NULL, -77.56, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (809, '2013-07-18 00:00:00Z', 'Whole Foods', NULL, -133, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (810, '2013-07-20 00:00:00Z', 'Whole Foods', NULL, -124.12, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (811, '2013-07-21 00:00:00Z', 'Chevron', 'Gas', -47.09, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (812, '2013-07-16 00:00:00Z', 'Best Cleaners', 'Laundry', -25.29, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (813, '2013-07-15 00:00:00Z', 'Misc. Expenses', NULL, -9.4, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (814, '2013-07-17 00:00:00Z', 'Misc. Expenses', NULL, -7.67, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (815, '2013-07-19 00:00:00Z', 'Misc. Expenses', NULL, -5.33, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (816, '2013-07-21 00:00:00Z', 'Misc. Expenses', NULL, -10.7, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (817, '2013-07-22 00:00:00Z', 'Stop&Shop', NULL, -145.27, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (818, '2013-07-25 00:00:00Z', 'Whole Foods', NULL, -92.76, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (819, '2013-07-27 00:00:00Z', 'Whole Foods', NULL, -78.74, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (820, '2013-07-28 00:00:00Z', 'Chevron', 'Gas', -23.67, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (821, '2013-07-23 00:00:00Z', 'Best Cleaners', 'Laundry', -10.77, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (822, '2013-07-22 00:00:00Z', 'Misc. Expenses', NULL, -12.43, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (823, '2013-07-24 00:00:00Z', 'Misc. Expenses', NULL, -11.13, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (824, '2013-07-26 00:00:00Z', 'Misc. Expenses', NULL, -10.28, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (825, '2013-07-28 00:00:00Z', 'Misc. Expenses', NULL, -11.79, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (826, '2013-07-11 00:00:00Z', 'Amazon', NULL, -54.81, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (827, '2013-07-21 00:00:00Z', 'Amazon', 'Software', -88.59, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (828, '2013-07-26 00:00:00Z', 'Amazon', 'AWS', -98.72, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (829, '2013-07-21 00:00:00Z', 'Transfer to AmEx', NULL, -1135.14, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (830, '2013-07-21 00:00:00Z', 'Transfer to Amazon', NULL, -186.11, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (831, '2013-07-21 00:00:00Z', 'Transfer to FIA', NULL, -520.84, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (832, '2013-07-21 00:00:00Z', 'Transfer from Checking', NULL, 1135.14, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (833, '2013-07-21 00:00:00Z', 'Transfer from Checking', NULL, 186.11, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (834, '2013-07-21 00:00:00Z', 'Transfer from Checking', NULL, 520.84, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (835, '2013-07-26 00:00:00Z', 'National Grid', 'Electic bill', -189.96, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (836, '2013-07-26 00:00:00Z', 'Orange County', 'Water bill', -172.44, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (837, '2013-07-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (838, '2013-07-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (839, '2013-07-26 00:00:00Z', 'BofA', 'ATM charges', -10.11, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (840, '2013-07-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (841, '2013-07-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (842, '2013-07-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (843, '2013-07-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (844, '2013-07-26 00:00:00Z', 'FIA Card Services', 'Cashback', 160.04, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (845, '2013-07-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -347.95, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (846, '2013-07-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -338.83, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (847, '2013-08-01 00:00:00Z', 'Stop&Shop', NULL, -136.03, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (848, '2013-08-04 00:00:00Z', 'Whole Foods', NULL, -73.64, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (849, '2013-08-06 00:00:00Z', 'Whole Foods', NULL, -144.25, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (850, '2013-08-07 00:00:00Z', 'Chevron', 'Gas', -39.14, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (851, '2013-08-02 00:00:00Z', 'Best Cleaners', 'Laundry', -14.06, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (852, '2013-08-01 00:00:00Z', 'Misc. Expenses', NULL, -11.26, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (853, '2013-08-03 00:00:00Z', 'Misc. Expenses', NULL, -11.03, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (854, '2013-08-05 00:00:00Z', 'Misc. Expenses', NULL, -13.9, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (855, '2013-08-07 00:00:00Z', 'Misc. Expenses', NULL, -9.98, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (856, '2013-08-08 00:00:00Z', 'Stop&Shop', NULL, -127.1, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (857, '2013-08-11 00:00:00Z', 'Whole Foods', NULL, -67.3, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (858, '2013-08-13 00:00:00Z', 'Whole Foods', NULL, -146.22, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (859, '2013-08-14 00:00:00Z', 'Chevron', 'Gas', -42.36, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (860, '2013-08-09 00:00:00Z', 'Best Cleaners', 'Laundry', -23.72, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (861, '2013-08-08 00:00:00Z', 'Misc. Expenses', NULL, -13.83, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (862, '2013-08-10 00:00:00Z', 'Misc. Expenses', NULL, -8.05, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (863, '2013-08-12 00:00:00Z', 'Misc. Expenses', NULL, -11.9, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (864, '2013-08-14 00:00:00Z', 'Misc. Expenses', NULL, -5.88, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (865, '2013-08-15 00:00:00Z', 'Stop&Shop', NULL, -148.2, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (866, '2013-08-18 00:00:00Z', 'Whole Foods', NULL, -148.36, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (867, '2013-08-20 00:00:00Z', 'Whole Foods', NULL, -100.93, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (868, '2013-08-21 00:00:00Z', 'Chevron', 'Gas', -36.98, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (869, '2013-08-16 00:00:00Z', 'Best Cleaners', 'Laundry', -20.43, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (870, '2013-08-15 00:00:00Z', 'Misc. Expenses', NULL, -10.3, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (871, '2013-08-17 00:00:00Z', 'Misc. Expenses', NULL, -9.53, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (872, '2013-08-19 00:00:00Z', 'Misc. Expenses', NULL, -7.56, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (873, '2013-08-21 00:00:00Z', 'Misc. Expenses', NULL, -8.15, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (874, '2013-08-22 00:00:00Z', 'Stop&Shop', NULL, -52.18, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (875, '2013-08-25 00:00:00Z', 'Whole Foods', NULL, -119.07, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (876, '2013-08-27 00:00:00Z', 'Whole Foods', NULL, -75.87, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (877, '2013-08-28 00:00:00Z', 'Chevron', 'Gas', -43.93, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (878, '2013-08-23 00:00:00Z', 'Best Cleaners', 'Laundry', -24.42, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (879, '2013-08-22 00:00:00Z', 'Misc. Expenses', NULL, -10.44, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (880, '2013-08-24 00:00:00Z', 'Misc. Expenses', NULL, -9.52, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (881, '2013-08-26 00:00:00Z', 'Misc. Expenses', NULL, -5.31, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (882, '2013-08-28 00:00:00Z', 'Misc. Expenses', NULL, -9.34, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (883, '2013-08-11 00:00:00Z', 'Amazon', NULL, -82.12, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (884, '2013-08-21 00:00:00Z', 'Amazon', 'Software', -64.51, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (885, '2013-08-26 00:00:00Z', 'Amazon', 'AWS', -72.34, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (886, '2013-08-21 00:00:00Z', 'Transfer to AmEx', NULL, -1148.25, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (887, '2013-08-21 00:00:00Z', 'Transfer to Amazon', NULL, -202.07, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (888, '2013-08-21 00:00:00Z', 'Transfer to FIA', NULL, -636.47, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (889, '2013-08-21 00:00:00Z', 'Transfer from Checking', NULL, 1148.25, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (890, '2013-08-21 00:00:00Z', 'Transfer from Checking', NULL, 202.07, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (891, '2013-08-21 00:00:00Z', 'Transfer from Checking', NULL, 636.47, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (892, '2013-08-26 00:00:00Z', 'National Grid', 'Electic bill', -181.1, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (893, '2013-08-26 00:00:00Z', 'Orange County', 'Water bill', -189.43, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (894, '2013-08-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (895, '2013-08-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (896, '2013-08-26 00:00:00Z', 'BofA', 'ATM charges', -23.17, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (897, '2013-08-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (898, '2013-08-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (899, '2013-08-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (900, '2013-08-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (901, '2013-08-26 00:00:00Z', 'FIA Card Services', 'Cashback', 118.21, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (902, '2013-08-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -304.95, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (903, '2013-08-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -332.04, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (904, '2013-09-01 00:00:00Z', 'Stop&Shop', NULL, -124.28, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (905, '2013-09-04 00:00:00Z', 'Whole Foods', NULL, -110.61, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (906, '2013-09-06 00:00:00Z', 'Whole Foods', NULL, -116.03, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (907, '2013-09-07 00:00:00Z', 'Chevron', 'Gas', -42.49, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (908, '2013-09-02 00:00:00Z', 'Best Cleaners', 'Laundry', -19.7, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (909, '2013-09-01 00:00:00Z', 'Misc. Expenses', NULL, -9.69, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (910, '2013-09-03 00:00:00Z', 'Misc. Expenses', NULL, -6.64, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (911, '2013-09-05 00:00:00Z', 'Misc. Expenses', NULL, -14.35, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (912, '2013-09-07 00:00:00Z', 'Misc. Expenses', NULL, -8.69, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (913, '2013-09-08 00:00:00Z', 'Stop&Shop', NULL, -69.94, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (914, '2013-09-11 00:00:00Z', 'Whole Foods', NULL, -129.72, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (915, '2013-09-13 00:00:00Z', 'Whole Foods', NULL, -60.92, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (916, '2013-09-14 00:00:00Z', 'Chevron', 'Gas', -49.21, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (917, '2013-09-09 00:00:00Z', 'Best Cleaners', 'Laundry', -24.55, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (918, '2013-09-08 00:00:00Z', 'Misc. Expenses', NULL, -14.53, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (919, '2013-09-10 00:00:00Z', 'Misc. Expenses', NULL, -6.58, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (920, '2013-09-12 00:00:00Z', 'Misc. Expenses', NULL, -14.75, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (921, '2013-09-14 00:00:00Z', 'Misc. Expenses', NULL, -14.8, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (922, '2013-09-15 00:00:00Z', 'Stop&Shop', NULL, -134.43, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (923, '2013-09-18 00:00:00Z', 'Whole Foods', NULL, -69.56, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (924, '2013-09-20 00:00:00Z', 'Whole Foods', NULL, -58.43, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (925, '2013-09-21 00:00:00Z', 'Chevron', 'Gas', -39.5, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (926, '2013-09-16 00:00:00Z', 'Best Cleaners', 'Laundry', -16.03, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (927, '2013-09-15 00:00:00Z', 'Misc. Expenses', NULL, -7.09, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (928, '2013-09-17 00:00:00Z', 'Misc. Expenses', NULL, -9.35, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (929, '2013-09-19 00:00:00Z', 'Misc. Expenses', NULL, -8.6, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (930, '2013-09-21 00:00:00Z', 'Misc. Expenses', NULL, -8.88, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (931, '2013-09-22 00:00:00Z', 'Stop&Shop', NULL, -107.96, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (932, '2013-09-25 00:00:00Z', 'Whole Foods', NULL, -95.33, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (933, '2013-09-27 00:00:00Z', 'Whole Foods', NULL, -50.15, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (934, '2013-09-28 00:00:00Z', 'Chevron', 'Gas', -31.44, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (935, '2013-09-23 00:00:00Z', 'Best Cleaners', 'Laundry', -20.21, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (936, '2013-09-22 00:00:00Z', 'Misc. Expenses', NULL, -9.76, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (937, '2013-09-24 00:00:00Z', 'Misc. Expenses', NULL, -8.14, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (938, '2013-09-26 00:00:00Z', 'Misc. Expenses', NULL, -14.79, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (939, '2013-09-28 00:00:00Z', 'Misc. Expenses', NULL, -6.96, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (940, '2013-09-11 00:00:00Z', 'Amazon', NULL, -46.83, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (941, '2013-09-21 00:00:00Z', 'Amazon', 'Software', -72.61, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (942, '2013-09-26 00:00:00Z', 'Amazon', 'AWS', -107.18, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (943, '2013-09-21 00:00:00Z', 'Transfer to AmEx', NULL, -1115.56, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (944, '2013-09-21 00:00:00Z', 'Transfer to Amazon', NULL, -205.37, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (945, '2013-09-21 00:00:00Z', 'Transfer to FIA', NULL, -541.89, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (946, '2013-09-21 00:00:00Z', 'Transfer from Checking', NULL, 1115.56, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (947, '2013-09-21 00:00:00Z', 'Transfer from Checking', NULL, 205.37, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (948, '2013-09-21 00:00:00Z', 'Transfer from Checking', NULL, 541.89, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (949, '2013-09-26 00:00:00Z', 'National Grid', 'Electic bill', -126.85, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (950, '2013-09-26 00:00:00Z', 'Orange County', 'Water bill', -132.09, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (951, '2013-09-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (952, '2013-09-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (953, '2013-09-26 00:00:00Z', 'BofA', 'ATM charges', -22.95, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (954, '2013-09-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (955, '2013-09-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (956, '2013-09-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (957, '2013-09-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (958, '2013-09-26 00:00:00Z', 'FIA Card Services', 'Cashback', 101.07, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (959, '2013-09-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -162.47, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (960, '2013-09-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -133.64, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (961, '2013-10-01 00:00:00Z', 'Stop&Shop', NULL, -79.81, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (962, '2013-10-04 00:00:00Z', 'Whole Foods', NULL, -110.52, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (963, '2013-10-06 00:00:00Z', 'Whole Foods', NULL, -107.36, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (964, '2013-10-07 00:00:00Z', 'Chevron', 'Gas', -33.45, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (965, '2013-10-02 00:00:00Z', 'Best Cleaners', 'Laundry', -21.4, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (966, '2013-10-01 00:00:00Z', 'Misc. Expenses', NULL, -13.62, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (967, '2013-10-03 00:00:00Z', 'Misc. Expenses', NULL, -9.23, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (968, '2013-10-05 00:00:00Z', 'Misc. Expenses', NULL, -14.88, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (969, '2013-10-07 00:00:00Z', 'Misc. Expenses', NULL, -12.78, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (970, '2013-10-08 00:00:00Z', 'Stop&Shop', NULL, -58.07, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (971, '2013-10-11 00:00:00Z', 'Whole Foods', NULL, -123.13, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (972, '2013-10-13 00:00:00Z', 'Whole Foods', NULL, -51.62, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (973, '2013-10-14 00:00:00Z', 'Chevron', 'Gas', -25.26, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (974, '2013-10-09 00:00:00Z', 'Best Cleaners', 'Laundry', -17.27, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (975, '2013-10-08 00:00:00Z', 'Misc. Expenses', NULL, -9.98, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (976, '2013-10-10 00:00:00Z', 'Misc. Expenses', NULL, -10.17, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (977, '2013-10-12 00:00:00Z', 'Misc. Expenses', NULL, -9.43, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (978, '2013-10-14 00:00:00Z', 'Misc. Expenses', NULL, -8.57, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (979, '2013-10-15 00:00:00Z', 'Stop&Shop', NULL, -96.7, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (980, '2013-10-18 00:00:00Z', 'Whole Foods', NULL, -82.33, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (981, '2013-10-20 00:00:00Z', 'Whole Foods', NULL, -68.18, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (982, '2013-10-21 00:00:00Z', 'Chevron', 'Gas', -31.11, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (983, '2013-10-16 00:00:00Z', 'Best Cleaners', 'Laundry', -25.77, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (984, '2013-10-15 00:00:00Z', 'Misc. Expenses', NULL, -13.55, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (985, '2013-10-17 00:00:00Z', 'Misc. Expenses', NULL, -11.27, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (986, '2013-10-19 00:00:00Z', 'Misc. Expenses', NULL, -5.05, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (987, '2013-10-21 00:00:00Z', 'Misc. Expenses', NULL, -8.58, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (988, '2013-10-22 00:00:00Z', 'Stop&Shop', NULL, -115.33, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (989, '2013-10-25 00:00:00Z', 'Whole Foods', NULL, -89.75, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (990, '2013-10-27 00:00:00Z', 'Whole Foods', NULL, -121.18, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (991, '2013-10-28 00:00:00Z', 'Chevron', 'Gas', -22.12, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (992, '2013-10-23 00:00:00Z', 'Best Cleaners', 'Laundry', -17.72, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (993, '2013-10-22 00:00:00Z', 'Misc. Expenses', NULL, -8.38, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (994, '2013-10-24 00:00:00Z', 'Misc. Expenses', NULL, -7.08, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (995, '2013-10-26 00:00:00Z', 'Misc. Expenses', NULL, -10.79, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (996, '2013-10-28 00:00:00Z', 'Misc. Expenses', NULL, -14.55, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (997, '2013-10-11 00:00:00Z', 'Amazon', NULL, -81.44, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (998, '2013-10-21 00:00:00Z', 'Amazon', 'Software', -105.75, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (999, '2013-10-26 00:00:00Z', 'Amazon', 'AWS', -42.78, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1000, '2013-10-21 00:00:00Z', 'Transfer to AmEx', NULL, -1171.7, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1001, '2013-10-21 00:00:00Z', 'Transfer to Amazon', NULL, -190.3, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1002, '2013-10-21 00:00:00Z', 'Transfer to FIA', NULL, -504.59, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1003, '2013-10-21 00:00:00Z', 'Transfer from Checking', NULL, 1171.70, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1004, '2013-10-21 00:00:00Z', 'Transfer from Checking', NULL, 190.30, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1005, '2013-10-21 00:00:00Z', 'Transfer from Checking', NULL, 504.59, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1006, '2013-10-26 00:00:00Z', 'National Grid', 'Electic bill', -166.1, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1007, '2013-10-26 00:00:00Z', 'Orange County', 'Water bill', -129.79, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1008, '2013-10-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1009, '2013-10-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1010, '2013-10-26 00:00:00Z', 'BofA', 'ATM charges', -23.18, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1011, '2013-10-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1012, '2013-10-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1013, '2013-10-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1014, '2013-10-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1015, '2013-10-26 00:00:00Z', 'FIA Card Services', 'Cashback', 147.17, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1016, '2013-10-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -169.37, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1017, '2013-10-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -361.16, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1018, '2013-11-01 00:00:00Z', 'Stop&Shop', NULL, -78.5, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1019, '2013-11-04 00:00:00Z', 'Whole Foods', NULL, -131.91, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1020, '2013-11-06 00:00:00Z', 'Whole Foods', NULL, -125.74, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1021, '2013-11-07 00:00:00Z', 'Chevron', 'Gas', -49.1, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1022, '2013-11-02 00:00:00Z', 'Best Cleaners', 'Laundry', -10.29, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1023, '2013-11-01 00:00:00Z', 'Misc. Expenses', NULL, -13.72, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1024, '2013-11-03 00:00:00Z', 'Misc. Expenses', NULL, -14.27, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1025, '2013-11-05 00:00:00Z', 'Misc. Expenses', NULL, -14.22, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1026, '2013-11-07 00:00:00Z', 'Misc. Expenses', NULL, -12.51, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1027, '2013-11-08 00:00:00Z', 'Stop&Shop', NULL, -130.4, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1028, '2013-11-11 00:00:00Z', 'Whole Foods', NULL, -139.72, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1029, '2013-11-13 00:00:00Z', 'Whole Foods', NULL, -67.73, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1030, '2013-11-14 00:00:00Z', 'Chevron', 'Gas', -40.86, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1031, '2013-11-09 00:00:00Z', 'Best Cleaners', 'Laundry', -17.78, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1032, '2013-11-08 00:00:00Z', 'Misc. Expenses', NULL, -9.91, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1033, '2013-11-10 00:00:00Z', 'Misc. Expenses', NULL, -13.77, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1034, '2013-11-12 00:00:00Z', 'Misc. Expenses', NULL, -14.59, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1035, '2013-11-14 00:00:00Z', 'Misc. Expenses', NULL, -5.35, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1036, '2013-11-15 00:00:00Z', 'Stop&Shop', NULL, -146.44, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1037, '2013-11-18 00:00:00Z', 'Whole Foods', NULL, -84.54, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1038, '2013-11-20 00:00:00Z', 'Whole Foods', NULL, -55.74, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1039, '2013-11-21 00:00:00Z', 'Chevron', 'Gas', -36.31, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1040, '2013-11-16 00:00:00Z', 'Best Cleaners', 'Laundry', -18.56, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1041, '2013-11-15 00:00:00Z', 'Misc. Expenses', NULL, -9.44, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1042, '2013-11-17 00:00:00Z', 'Misc. Expenses', NULL, -9.32, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1043, '2013-11-19 00:00:00Z', 'Misc. Expenses', NULL, -9.28, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1044, '2013-11-21 00:00:00Z', 'Misc. Expenses', NULL, -9.61, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1045, '2013-11-22 00:00:00Z', 'Stop&Shop', NULL, -75.06, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1046, '2013-11-25 00:00:00Z', 'Whole Foods', NULL, -94.51, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1047, '2013-11-27 00:00:00Z', 'Whole Foods', NULL, -112.37, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1048, '2013-11-28 00:00:00Z', 'Chevron', 'Gas', -32.29, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1049, '2013-11-23 00:00:00Z', 'Best Cleaners', 'Laundry', -18.76, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1050, '2013-11-22 00:00:00Z', 'Misc. Expenses', NULL, -8.61, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1051, '2013-11-24 00:00:00Z', 'Misc. Expenses', NULL, -11.38, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1052, '2013-11-26 00:00:00Z', 'Misc. Expenses', NULL, -10.5, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1053, '2013-11-28 00:00:00Z', 'Misc. Expenses', NULL, -6.81, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1054, '2013-11-11 00:00:00Z', 'Amazon', NULL, -56.67, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1055, '2013-11-21 00:00:00Z', 'Amazon', 'Software', -54.64, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1056, '2013-11-26 00:00:00Z', 'Amazon', 'AWS', -67.12, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1057, '2013-11-21 00:00:00Z', 'Transfer to AmEx', NULL, -1122.14, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1058, '2013-11-21 00:00:00Z', 'Transfer to Amazon', NULL, -215.93, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1059, '2013-11-21 00:00:00Z', 'Transfer to FIA', NULL, -551.67, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1060, '2013-11-21 00:00:00Z', 'Transfer from Checking', NULL, 1122.14, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1061, '2013-11-21 00:00:00Z', 'Transfer from Checking', NULL, 215.93, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1062, '2013-11-21 00:00:00Z', 'Transfer from Checking', NULL, 551.67, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1063, '2013-11-26 00:00:00Z', 'National Grid', 'Electic bill', -137.95, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1064, '2013-11-26 00:00:00Z', 'Orange County', 'Water bill', -171.42, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1065, '2013-11-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1066, '2013-11-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1067, '2013-11-26 00:00:00Z', 'BofA', 'ATM charges', -13.89, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1068, '2013-11-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1069, '2013-11-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1070, '2013-11-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1071, '2013-11-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1072, '2013-11-26 00:00:00Z', 'FIA Card Services', 'Cashback', 142.38, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1073, '2013-11-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -265.47, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1074, '2013-11-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -270.08, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1075, '2013-12-01 00:00:00Z', 'Stop&Shop', NULL, -66.9, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1076, '2013-12-04 00:00:00Z', 'Whole Foods', NULL, -98.08, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1077, '2013-12-06 00:00:00Z', 'Whole Foods', NULL, -113.06, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1078, '2013-12-07 00:00:00Z', 'Chevron', 'Gas', -32.07, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1079, '2013-12-02 00:00:00Z', 'Best Cleaners', 'Laundry', -25.79, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1080, '2013-12-01 00:00:00Z', 'Misc. Expenses', NULL, -5.78, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1081, '2013-12-03 00:00:00Z', 'Misc. Expenses', NULL, -8.53, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1082, '2013-12-05 00:00:00Z', 'Misc. Expenses', NULL, -10.2, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1083, '2013-12-07 00:00:00Z', 'Misc. Expenses', NULL, -13.24, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1084, '2013-12-08 00:00:00Z', 'Stop&Shop', NULL, -77.45, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1085, '2013-12-11 00:00:00Z', 'Whole Foods', NULL, -75.42, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1086, '2013-12-13 00:00:00Z', 'Whole Foods', NULL, -141.66, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1087, '2013-12-14 00:00:00Z', 'Chevron', 'Gas', -38.55, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1088, '2013-12-09 00:00:00Z', 'Best Cleaners', 'Laundry', -13.29, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1089, '2013-12-08 00:00:00Z', 'Misc. Expenses', NULL, -13, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1090, '2013-12-10 00:00:00Z', 'Misc. Expenses', NULL, -13.27, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1091, '2013-12-12 00:00:00Z', 'Misc. Expenses', NULL, -9.07, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1092, '2013-12-14 00:00:00Z', 'Misc. Expenses', NULL, -9.97, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1093, '2013-12-15 00:00:00Z', 'Stop&Shop', NULL, -126.48, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1094, '2013-12-18 00:00:00Z', 'Whole Foods', NULL, -67.94, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1095, '2013-12-20 00:00:00Z', 'Whole Foods', NULL, -77.56, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1096, '2013-12-21 00:00:00Z', 'Chevron', 'Gas', -26.58, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1097, '2013-12-16 00:00:00Z', 'Best Cleaners', 'Laundry', -27.34, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1098, '2013-12-15 00:00:00Z', 'Misc. Expenses', NULL, -13.3, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1099, '2013-12-17 00:00:00Z', 'Misc. Expenses', NULL, -7.95, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1100, '2013-12-19 00:00:00Z', 'Misc. Expenses', NULL, -10.55, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1101, '2013-12-21 00:00:00Z', 'Misc. Expenses', NULL, -13.4, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1102, '2013-12-22 00:00:00Z', 'Stop&Shop', NULL, -80.68, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1103, '2013-12-25 00:00:00Z', 'Whole Foods', NULL, -95.9, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1104, '2013-12-27 00:00:00Z', 'Whole Foods', NULL, -128.73, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1105, '2013-12-28 00:00:00Z', 'Chevron', 'Gas', -45.57, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1106, '2013-12-23 00:00:00Z', 'Best Cleaners', 'Laundry', -14.91, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1107, '2013-12-22 00:00:00Z', 'Misc. Expenses', NULL, -7.35, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1108, '2013-12-24 00:00:00Z', 'Misc. Expenses', NULL, -14.15, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1109, '2013-12-26 00:00:00Z', 'Misc. Expenses', NULL, -13.4, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1110, '2013-12-28 00:00:00Z', 'Misc. Expenses', NULL, -11.59, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1111, '2013-12-11 00:00:00Z', 'Amazon', NULL, -77.31, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1112, '2013-12-21 00:00:00Z', 'Amazon', 'Software', -106.04, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1113, '2013-12-26 00:00:00Z', 'Amazon', 'AWS', -97.93, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1114, '2013-12-21 00:00:00Z', 'Transfer to AmEx', NULL, -1182.81, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1115, '2013-12-21 00:00:00Z', 'Transfer to Amazon', NULL, -182.36, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1116, '2013-12-21 00:00:00Z', 'Transfer to FIA', NULL, -533.08, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1117, '2013-12-21 00:00:00Z', 'Transfer from Checking', NULL, 1182.81, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1118, '2013-12-21 00:00:00Z', 'Transfer from Checking', NULL, 182.36, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1119, '2013-12-21 00:00:00Z', 'Transfer from Checking', NULL, 533.08, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1120, '2013-12-26 00:00:00Z', 'National Grid', 'Electic bill', -139.46, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1121, '2013-12-26 00:00:00Z', 'Orange County', 'Water bill', -110.69, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1122, '2013-12-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1123, '2013-12-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1124, '2013-12-26 00:00:00Z', 'BofA', 'ATM charges', -10.93, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1125, '2013-12-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1126, '2013-12-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1127, '2013-12-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1128, '2013-12-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1129, '2013-12-26 00:00:00Z', 'FIA Card Services', 'Cashback', 103.05, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1130, '2013-12-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -341.34, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1131, '2013-12-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -146.49, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1132, '2013-12-31 00:00:00Z', 'Red Cross', NULL, -5000, 8, 10);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1133, '2014-01-01 00:00:00Z', 'Stop&Shop', NULL, -104.11, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1134, '2014-01-04 00:00:00Z', 'Whole Foods', NULL, -148.56, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1135, '2014-01-06 00:00:00Z', 'Whole Foods', NULL, -64.56, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1136, '2014-01-07 00:00:00Z', 'Chevron', 'Gas', -47.17, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1137, '2014-01-02 00:00:00Z', 'Best Cleaners', 'Laundry', -15.01, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1138, '2014-01-01 00:00:00Z', 'Misc. Expenses', NULL, -10.26, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1139, '2014-01-03 00:00:00Z', 'Misc. Expenses', NULL, -14.28, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1140, '2014-01-05 00:00:00Z', 'Misc. Expenses', NULL, -5.64, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1141, '2014-01-07 00:00:00Z', 'Misc. Expenses', NULL, -8.67, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1142, '2014-01-08 00:00:00Z', 'Stop&Shop', NULL, -93.06, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1143, '2014-01-11 00:00:00Z', 'Whole Foods', NULL, -97.06, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1144, '2014-01-13 00:00:00Z', 'Whole Foods', NULL, -113.42, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1145, '2014-01-14 00:00:00Z', 'Chevron', 'Gas', -30.24, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1146, '2014-01-09 00:00:00Z', 'Best Cleaners', 'Laundry', -19.42, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1147, '2014-01-08 00:00:00Z', 'Misc. Expenses', NULL, -7.53, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1148, '2014-01-10 00:00:00Z', 'Misc. Expenses', NULL, -10.05, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1149, '2014-01-12 00:00:00Z', 'Misc. Expenses', NULL, -14.72, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1150, '2014-01-14 00:00:00Z', 'Misc. Expenses', NULL, -5.92, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1151, '2014-01-15 00:00:00Z', 'Stop&Shop', NULL, -93.69, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1152, '2014-01-18 00:00:00Z', 'Whole Foods', NULL, -56.03, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1153, '2014-01-20 00:00:00Z', 'Whole Foods', NULL, -141.84, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1154, '2014-01-21 00:00:00Z', 'Chevron', 'Gas', -47.23, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1155, '2014-01-16 00:00:00Z', 'Best Cleaners', 'Laundry', -29.41, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1156, '2014-01-15 00:00:00Z', 'Misc. Expenses', NULL, -8.54, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1157, '2014-01-17 00:00:00Z', 'Misc. Expenses', NULL, -10.68, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1158, '2014-01-19 00:00:00Z', 'Misc. Expenses', NULL, -14.37, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1159, '2014-01-21 00:00:00Z', 'Misc. Expenses', NULL, -13.15, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1160, '2014-01-22 00:00:00Z', 'Stop&Shop', NULL, -66.89, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1161, '2014-01-25 00:00:00Z', 'Whole Foods', NULL, -147.08, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1162, '2014-01-27 00:00:00Z', 'Whole Foods', NULL, -105.86, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1163, '2014-01-28 00:00:00Z', 'Chevron', 'Gas', -34.72, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1164, '2014-01-23 00:00:00Z', 'Best Cleaners', 'Laundry', -24.45, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1165, '2014-01-22 00:00:00Z', 'Misc. Expenses', NULL, -8.4, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1166, '2014-01-24 00:00:00Z', 'Misc. Expenses', NULL, -12.93, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1167, '2014-01-26 00:00:00Z', 'Misc. Expenses', NULL, -9.24, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1168, '2014-01-28 00:00:00Z', 'Misc. Expenses', NULL, -11.31, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1169, '2014-01-11 00:00:00Z', 'Amazon', NULL, -50.49, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1170, '2014-01-21 00:00:00Z', 'Amazon', 'Software', -119.03, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1171, '2014-01-26 00:00:00Z', 'Amazon', 'AWS', -48.02, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1172, '2014-01-21 00:00:00Z', 'Transfer to AmEx', NULL, -1145.11, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1173, '2014-01-21 00:00:00Z', 'Transfer to Amazon', NULL, -186.38, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1174, '2014-01-21 00:00:00Z', 'Transfer to FIA', NULL, -580.88, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1175, '2014-01-21 00:00:00Z', 'Transfer from Checking', NULL, 1145.11, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1176, '2014-01-21 00:00:00Z', 'Transfer from Checking', NULL, 186.38, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1177, '2014-01-21 00:00:00Z', 'Transfer from Checking', NULL, 580.88, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1178, '2014-01-26 00:00:00Z', 'National Grid', 'Electic bill', -139.74, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1179, '2014-01-26 00:00:00Z', 'Orange County', 'Water bill', -178.71, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1180, '2014-01-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1181, '2014-01-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1182, '2014-01-26 00:00:00Z', 'BofA', 'ATM charges', -17.34, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1183, '2014-01-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1184, '2014-01-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1185, '2014-01-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1186, '2014-01-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1187, '2014-01-26 00:00:00Z', 'FIA Card Services', 'Cashback', 113.19, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1188, '2014-01-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -103.3, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1189, '2014-01-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -190.62, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1190, '2014-02-01 00:00:00Z', 'Stop&Shop', NULL, -80.45, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1191, '2014-02-04 00:00:00Z', 'Whole Foods', NULL, -149.74, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1192, '2014-02-06 00:00:00Z', 'Whole Foods', NULL, -57.43, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1193, '2014-02-07 00:00:00Z', 'Chevron', 'Gas', -40.59, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1194, '2014-02-02 00:00:00Z', 'Best Cleaners', 'Laundry', -26.6, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1195, '2014-02-01 00:00:00Z', 'Misc. Expenses', NULL, -13.1, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1196, '2014-02-03 00:00:00Z', 'Misc. Expenses', NULL, -5.76, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1197, '2014-02-05 00:00:00Z', 'Misc. Expenses', NULL, -11.03, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1198, '2014-02-07 00:00:00Z', 'Misc. Expenses', NULL, -5.21, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1199, '2014-02-08 00:00:00Z', 'Stop&Shop', NULL, -71.02, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1200, '2014-02-11 00:00:00Z', 'Whole Foods', NULL, -130.43, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1201, '2014-02-13 00:00:00Z', 'Whole Foods', NULL, -133.51, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1202, '2014-02-14 00:00:00Z', 'Chevron', 'Gas', -23.29, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1203, '2014-02-09 00:00:00Z', 'Best Cleaners', 'Laundry', -17.95, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1204, '2014-02-08 00:00:00Z', 'Misc. Expenses', NULL, -14.84, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1205, '2014-02-10 00:00:00Z', 'Misc. Expenses', NULL, -13.8, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1206, '2014-02-12 00:00:00Z', 'Misc. Expenses', NULL, -6.59, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1207, '2014-02-14 00:00:00Z', 'Misc. Expenses', NULL, -13.45, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1208, '2014-02-15 00:00:00Z', 'Stop&Shop', NULL, -148.55, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1209, '2014-02-18 00:00:00Z', 'Whole Foods', NULL, -133.61, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1210, '2014-02-20 00:00:00Z', 'Whole Foods', NULL, -106.25, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1211, '2014-02-21 00:00:00Z', 'Chevron', 'Gas', -40.05, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1212, '2014-02-16 00:00:00Z', 'Best Cleaners', 'Laundry', -22.16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1213, '2014-02-15 00:00:00Z', 'Misc. Expenses', NULL, -7.59, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1214, '2014-02-17 00:00:00Z', 'Misc. Expenses', NULL, -6.61, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1215, '2014-02-19 00:00:00Z', 'Misc. Expenses', NULL, -7.7, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1216, '2014-02-21 00:00:00Z', 'Misc. Expenses', NULL, -12.49, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1217, '2014-02-22 00:00:00Z', 'Stop&Shop', NULL, -144.44, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1218, '2014-02-25 00:00:00Z', 'Whole Foods', NULL, -139.12, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1219, '2014-02-27 00:00:00Z', 'Whole Foods', NULL, -99.92, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1220, '2014-02-28 00:00:00Z', 'Chevron', 'Gas', -26.26, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1221, '2014-02-23 00:00:00Z', 'Best Cleaners', 'Laundry', -27.35, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1222, '2014-02-22 00:00:00Z', 'Misc. Expenses', NULL, -8.93, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1223, '2014-02-24 00:00:00Z', 'Misc. Expenses', NULL, -9.44, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1224, '2014-02-26 00:00:00Z', 'Misc. Expenses', NULL, -5.14, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1225, '2014-02-28 00:00:00Z', 'Misc. Expenses', NULL, -9.27, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1226, '2014-02-11 00:00:00Z', 'Amazon', NULL, -99.13, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1227, '2014-02-21 00:00:00Z', 'Amazon', 'Software', -82.78, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1228, '2014-02-26 00:00:00Z', 'Amazon', 'AWS', -106.58, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1229, '2014-02-21 00:00:00Z', 'Transfer to AmEx', NULL, -1100.97, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1230, '2014-02-21 00:00:00Z', 'Transfer to Amazon', NULL, -192.37, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1231, '2014-02-21 00:00:00Z', 'Transfer to FIA', NULL, -620.5, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1232, '2014-02-21 00:00:00Z', 'Transfer from Checking', NULL, 1100.97, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1233, '2014-02-21 00:00:00Z', 'Transfer from Checking', NULL, 192.37, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1234, '2014-02-21 00:00:00Z', 'Transfer from Checking', NULL, 620.50, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1235, '2014-02-26 00:00:00Z', 'National Grid', 'Electic bill', -102.3, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1236, '2014-02-26 00:00:00Z', 'Orange County', 'Water bill', -128.82, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1237, '2014-02-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1238, '2014-02-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1239, '2014-02-26 00:00:00Z', 'BofA', 'ATM charges', -18.67, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1240, '2014-02-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1241, '2014-02-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1242, '2014-02-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1243, '2014-02-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1244, '2014-02-26 00:00:00Z', 'FIA Card Services', 'Cashback', 117.05, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1245, '2014-02-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -363.51, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1246, '2014-02-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -386.85, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1247, '2014-03-01 00:00:00Z', 'Stop&Shop', NULL, -137.63, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1248, '2014-03-04 00:00:00Z', 'Whole Foods', NULL, -80.07, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1249, '2014-03-06 00:00:00Z', 'Whole Foods', NULL, -69.43, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1250, '2014-03-07 00:00:00Z', 'Chevron', 'Gas', -29.07, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1251, '2014-03-02 00:00:00Z', 'Best Cleaners', 'Laundry', -12.34, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1252, '2014-03-01 00:00:00Z', 'Misc. Expenses', NULL, -10.24, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1253, '2014-03-03 00:00:00Z', 'Misc. Expenses', NULL, -12.65, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1254, '2014-03-05 00:00:00Z', 'Misc. Expenses', NULL, -14.11, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1255, '2014-03-07 00:00:00Z', 'Misc. Expenses', NULL, -14.71, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1256, '2014-03-08 00:00:00Z', 'Stop&Shop', NULL, -95.98, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1257, '2014-03-11 00:00:00Z', 'Whole Foods', NULL, -125.02, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1258, '2014-03-13 00:00:00Z', 'Whole Foods', NULL, -83.47, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1259, '2014-03-14 00:00:00Z', 'Chevron', 'Gas', -29.99, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1260, '2014-03-09 00:00:00Z', 'Best Cleaners', 'Laundry', -10.69, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1261, '2014-03-08 00:00:00Z', 'Misc. Expenses', NULL, -6.65, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1262, '2014-03-10 00:00:00Z', 'Misc. Expenses', NULL, -5.47, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1263, '2014-03-12 00:00:00Z', 'Misc. Expenses', NULL, -5.06, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1264, '2014-03-14 00:00:00Z', 'Misc. Expenses', NULL, -13.03, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1265, '2014-03-15 00:00:00Z', 'Stop&Shop', NULL, -55.92, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1266, '2014-03-18 00:00:00Z', 'Whole Foods', NULL, -56.04, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1267, '2014-03-20 00:00:00Z', 'Whole Foods', NULL, -147.4, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1268, '2014-03-21 00:00:00Z', 'Chevron', 'Gas', -35.71, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1269, '2014-03-16 00:00:00Z', 'Best Cleaners', 'Laundry', -26.42, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1270, '2014-03-15 00:00:00Z', 'Misc. Expenses', NULL, -12.2, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1271, '2014-03-17 00:00:00Z', 'Misc. Expenses', NULL, -10.23, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1272, '2014-03-19 00:00:00Z', 'Misc. Expenses', NULL, -13.76, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1273, '2014-03-21 00:00:00Z', 'Misc. Expenses', NULL, -5.89, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1274, '2014-03-22 00:00:00Z', 'Stop&Shop', NULL, -115.07, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1275, '2014-03-25 00:00:00Z', 'Whole Foods', NULL, -137.68, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1276, '2014-03-27 00:00:00Z', 'Whole Foods', NULL, -101.06, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1277, '2014-03-28 00:00:00Z', 'Chevron', 'Gas', -47.35, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1278, '2014-03-23 00:00:00Z', 'Best Cleaners', 'Laundry', -22.11, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1279, '2014-03-22 00:00:00Z', 'Misc. Expenses', NULL, -10.54, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1280, '2014-03-24 00:00:00Z', 'Misc. Expenses', NULL, -13.97, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1281, '2014-03-26 00:00:00Z', 'Misc. Expenses', NULL, -12.62, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1282, '2014-03-28 00:00:00Z', 'Misc. Expenses', NULL, -12.81, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1283, '2014-03-11 00:00:00Z', 'Amazon', NULL, -75.85, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1284, '2014-03-21 00:00:00Z', 'Amazon', 'Software', -56.41, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1285, '2014-03-26 00:00:00Z', 'Amazon', 'AWS', -112.62, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1286, '2014-03-21 00:00:00Z', 'Transfer to AmEx', NULL, -1163.2, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1287, '2014-03-21 00:00:00Z', 'Transfer to Amazon', NULL, -180.39, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1288, '2014-03-21 00:00:00Z', 'Transfer to FIA', NULL, -551.63, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1289, '2014-03-21 00:00:00Z', 'Transfer from Checking', NULL, 1163.20, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1290, '2014-03-21 00:00:00Z', 'Transfer from Checking', NULL, 180.39, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1291, '2014-03-21 00:00:00Z', 'Transfer from Checking', NULL, 551.63, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1292, '2014-03-26 00:00:00Z', 'National Grid', 'Electic bill', -136.76, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1293, '2014-03-26 00:00:00Z', 'Orange County', 'Water bill', -144.06, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1294, '2014-03-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1295, '2014-03-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1296, '2014-03-26 00:00:00Z', 'BofA', 'ATM charges', -24.41, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1297, '2014-03-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1298, '2014-03-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1299, '2014-03-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1300, '2014-03-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1301, '2014-03-26 00:00:00Z', 'FIA Card Services', 'Cashback', 144.44, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1302, '2014-03-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -356.95, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1303, '2014-03-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -201.57, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1304, '2014-04-01 00:00:00Z', 'Stop&Shop', NULL, -84.75, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1305, '2014-04-04 00:00:00Z', 'Whole Foods', NULL, -102.41, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1306, '2014-04-06 00:00:00Z', 'Whole Foods', NULL, -79.01, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1307, '2014-04-07 00:00:00Z', 'Chevron', 'Gas', -35.03, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1308, '2014-04-02 00:00:00Z', 'Best Cleaners', 'Laundry', -10.34, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1309, '2014-04-01 00:00:00Z', 'Misc. Expenses', NULL, -9.97, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1310, '2014-04-03 00:00:00Z', 'Misc. Expenses', NULL, -7.03, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1311, '2014-04-05 00:00:00Z', 'Misc. Expenses', NULL, -6.9, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1312, '2014-04-07 00:00:00Z', 'Misc. Expenses', NULL, -7.45, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1313, '2014-04-08 00:00:00Z', 'Stop&Shop', NULL, -58.47, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1314, '2014-04-11 00:00:00Z', 'Whole Foods', NULL, -73.77, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1315, '2014-04-13 00:00:00Z', 'Whole Foods', NULL, -90.22, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1316, '2014-04-14 00:00:00Z', 'Chevron', 'Gas', -47.48, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1317, '2014-04-09 00:00:00Z', 'Best Cleaners', 'Laundry', -24.8, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1318, '2014-04-08 00:00:00Z', 'Misc. Expenses', NULL, -8.45, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1319, '2014-04-10 00:00:00Z', 'Misc. Expenses', NULL, -12.94, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1320, '2014-04-12 00:00:00Z', 'Misc. Expenses', NULL, -6.38, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1321, '2014-04-14 00:00:00Z', 'Misc. Expenses', NULL, -9.35, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1322, '2014-04-15 00:00:00Z', 'Stop&Shop', NULL, -139.31, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1323, '2014-04-18 00:00:00Z', 'Whole Foods', NULL, -59.5, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1324, '2014-04-20 00:00:00Z', 'Whole Foods', NULL, -110.31, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1325, '2014-04-21 00:00:00Z', 'Chevron', 'Gas', -34.45, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1326, '2014-04-16 00:00:00Z', 'Best Cleaners', 'Laundry', -27.56, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1327, '2014-04-15 00:00:00Z', 'Misc. Expenses', NULL, -10.87, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1328, '2014-04-17 00:00:00Z', 'Misc. Expenses', NULL, -9.71, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1329, '2014-04-19 00:00:00Z', 'Misc. Expenses', NULL, -7.3, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1330, '2014-04-21 00:00:00Z', 'Misc. Expenses', NULL, -12.95, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1331, '2014-04-22 00:00:00Z', 'Stop&Shop', NULL, -116.42, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1332, '2014-04-25 00:00:00Z', 'Whole Foods', NULL, -149.37, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1333, '2014-04-27 00:00:00Z', 'Whole Foods', NULL, -122.33, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1334, '2014-04-28 00:00:00Z', 'Chevron', 'Gas', -33.38, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1335, '2014-04-23 00:00:00Z', 'Best Cleaners', 'Laundry', -26.24, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1336, '2014-04-22 00:00:00Z', 'Misc. Expenses', NULL, -14.16, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1337, '2014-04-24 00:00:00Z', 'Misc. Expenses', NULL, -6.57, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1338, '2014-04-26 00:00:00Z', 'Misc. Expenses', NULL, -9.47, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1339, '2014-04-28 00:00:00Z', 'Misc. Expenses', NULL, -8.86, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1340, '2014-04-11 00:00:00Z', 'Amazon', NULL, -52.55, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1341, '2014-04-21 00:00:00Z', 'Amazon', 'Software', -74.74, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1342, '2014-04-26 00:00:00Z', 'Amazon', 'AWS', -54.68, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1343, '2014-04-21 00:00:00Z', 'Transfer to AmEx', NULL, -1130.5, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1344, '2014-04-21 00:00:00Z', 'Transfer to Amazon', NULL, -215.47, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1345, '2014-04-21 00:00:00Z', 'Transfer to FIA', NULL, -519.28, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1346, '2014-04-21 00:00:00Z', 'Transfer from Checking', NULL, 1130.50, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1347, '2014-04-21 00:00:00Z', 'Transfer from Checking', NULL, 215.47, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1348, '2014-04-21 00:00:00Z', 'Transfer from Checking', NULL, 519.28, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1349, '2014-04-26 00:00:00Z', 'National Grid', 'Electic bill', -182.02, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1350, '2014-04-26 00:00:00Z', 'Orange County', 'Water bill', -186.14, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1351, '2014-04-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1352, '2014-04-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1353, '2014-04-26 00:00:00Z', 'BofA', 'ATM charges', -14.78, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1354, '2014-04-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1355, '2014-04-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1356, '2014-04-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1357, '2014-04-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1358, '2014-04-26 00:00:00Z', 'FIA Card Services', 'Cashback', 164.98, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1359, '2014-04-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -120.8, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1360, '2014-04-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -196.1, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1361, '2014-05-01 00:00:00Z', 'Stop&Shop', NULL, -120.03, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1362, '2014-05-04 00:00:00Z', 'Whole Foods', NULL, -117.65, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1363, '2014-05-06 00:00:00Z', 'Whole Foods', NULL, -50.22, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1364, '2014-05-07 00:00:00Z', 'Chevron', 'Gas', -32.27, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1365, '2014-05-02 00:00:00Z', 'Best Cleaners', 'Laundry', -24.36, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1366, '2014-05-01 00:00:00Z', 'Misc. Expenses', NULL, -14.76, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1367, '2014-05-03 00:00:00Z', 'Misc. Expenses', NULL, -10.81, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1368, '2014-05-05 00:00:00Z', 'Misc. Expenses', NULL, -8.79, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1369, '2014-05-07 00:00:00Z', 'Misc. Expenses', NULL, -14.18, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1370, '2014-05-08 00:00:00Z', 'Stop&Shop', NULL, -78.08, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1371, '2014-05-11 00:00:00Z', 'Whole Foods', NULL, -130.72, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1372, '2014-05-13 00:00:00Z', 'Whole Foods', NULL, -109.8, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1373, '2014-05-14 00:00:00Z', 'Chevron', 'Gas', -23.32, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1374, '2014-05-09 00:00:00Z', 'Best Cleaners', 'Laundry', -18.13, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1375, '2014-05-08 00:00:00Z', 'Misc. Expenses', NULL, -11.03, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1376, '2014-05-10 00:00:00Z', 'Misc. Expenses', NULL, -11.68, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1377, '2014-05-12 00:00:00Z', 'Misc. Expenses', NULL, -12.93, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1378, '2014-05-14 00:00:00Z', 'Misc. Expenses', NULL, -8.25, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1379, '2014-05-15 00:00:00Z', 'Stop&Shop', NULL, -142.46, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1380, '2014-05-18 00:00:00Z', 'Whole Foods', NULL, -112.63, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1381, '2014-05-20 00:00:00Z', 'Whole Foods', NULL, -116.46, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1382, '2014-05-21 00:00:00Z', 'Chevron', 'Gas', -30.79, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1383, '2014-05-16 00:00:00Z', 'Best Cleaners', 'Laundry', -16.99, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1384, '2014-05-15 00:00:00Z', 'Misc. Expenses', NULL, -9.47, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1385, '2014-05-17 00:00:00Z', 'Misc. Expenses', NULL, -10.45, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1386, '2014-05-19 00:00:00Z', 'Misc. Expenses', NULL, -8.36, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1387, '2014-05-21 00:00:00Z', 'Misc. Expenses', NULL, -5.45, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1388, '2014-05-22 00:00:00Z', 'Stop&Shop', NULL, -79.17, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1389, '2014-05-25 00:00:00Z', 'Whole Foods', NULL, -146.86, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1390, '2014-05-27 00:00:00Z', 'Whole Foods', NULL, -110.57, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1391, '2014-05-28 00:00:00Z', 'Chevron', 'Gas', -45.39, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1392, '2014-05-23 00:00:00Z', 'Best Cleaners', 'Laundry', -24.17, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1393, '2014-05-22 00:00:00Z', 'Misc. Expenses', NULL, -11.94, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1394, '2014-05-24 00:00:00Z', 'Misc. Expenses', NULL, -9.72, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1395, '2014-05-26 00:00:00Z', 'Misc. Expenses', NULL, -12.29, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1396, '2014-05-28 00:00:00Z', 'Misc. Expenses', NULL, -12.39, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1397, '2014-05-11 00:00:00Z', 'Amazon', NULL, -82.17, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1398, '2014-05-21 00:00:00Z', 'Amazon', 'Software', -118.73, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1399, '2014-05-26 00:00:00Z', 'Amazon', 'AWS', -60.81, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1400, '2014-05-21 00:00:00Z', 'Transfer to AmEx', NULL, -1139.2, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1401, '2014-05-21 00:00:00Z', 'Transfer to Amazon', NULL, -184.41, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1402, '2014-05-21 00:00:00Z', 'Transfer to FIA', NULL, -637.8, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1403, '2014-05-21 00:00:00Z', 'Transfer from Checking', NULL, 1139.20, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1404, '2014-05-21 00:00:00Z', 'Transfer from Checking', NULL, 184.41, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1405, '2014-05-21 00:00:00Z', 'Transfer from Checking', NULL, 637.80, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1406, '2014-05-26 00:00:00Z', 'National Grid', 'Electic bill', -181.33, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1407, '2014-05-26 00:00:00Z', 'Orange County', 'Water bill', -139.34, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1408, '2014-05-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1409, '2014-05-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1410, '2014-05-26 00:00:00Z', 'BofA', 'ATM charges', -22.34, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1411, '2014-05-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1412, '2014-05-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1413, '2014-05-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1414, '2014-05-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1415, '2014-05-26 00:00:00Z', 'FIA Card Services', 'Cashback', 110.48, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1416, '2014-05-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -185.61, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1417, '2014-05-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -161.06, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1418, '2014-06-01 00:00:00Z', 'Stop&Shop', NULL, -83.51, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1419, '2014-06-04 00:00:00Z', 'Whole Foods', NULL, -65.12, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1420, '2014-06-06 00:00:00Z', 'Whole Foods', NULL, -111.05, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1421, '2014-06-07 00:00:00Z', 'Chevron', 'Gas', -25.08, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1422, '2014-06-02 00:00:00Z', 'Best Cleaners', 'Laundry', -25.38, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1423, '2014-06-01 00:00:00Z', 'Misc. Expenses', NULL, -12.16, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1424, '2014-06-03 00:00:00Z', 'Misc. Expenses', NULL, -8.55, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1425, '2014-06-05 00:00:00Z', 'Misc. Expenses', NULL, -14.05, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1426, '2014-06-07 00:00:00Z', 'Misc. Expenses', NULL, -8.51, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1427, '2014-06-08 00:00:00Z', 'Stop&Shop', NULL, -142.14, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1428, '2014-06-11 00:00:00Z', 'Whole Foods', NULL, -111.42, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1429, '2014-06-13 00:00:00Z', 'Whole Foods', NULL, -103.23, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1430, '2014-06-14 00:00:00Z', 'Chevron', 'Gas', -44.42, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1431, '2014-06-09 00:00:00Z', 'Best Cleaners', 'Laundry', -22.11, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1432, '2014-06-08 00:00:00Z', 'Misc. Expenses', NULL, -6.57, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1433, '2014-06-10 00:00:00Z', 'Misc. Expenses', NULL, -8.57, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1434, '2014-06-12 00:00:00Z', 'Misc. Expenses', NULL, -11.85, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1435, '2014-06-14 00:00:00Z', 'Misc. Expenses', NULL, -13.87, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1436, '2014-06-15 00:00:00Z', 'Stop&Shop', NULL, -71.42, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1437, '2014-06-18 00:00:00Z', 'Whole Foods', NULL, -97.04, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1438, '2014-06-20 00:00:00Z', 'Whole Foods', NULL, -103.09, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1439, '2014-06-21 00:00:00Z', 'Chevron', 'Gas', -43.21, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1440, '2014-06-16 00:00:00Z', 'Best Cleaners', 'Laundry', -27.22, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1441, '2014-06-15 00:00:00Z', 'Misc. Expenses', NULL, -7.38, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1442, '2014-06-17 00:00:00Z', 'Misc. Expenses', NULL, -6.9, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1443, '2014-06-19 00:00:00Z', 'Misc. Expenses', NULL, -9.02, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1444, '2014-06-21 00:00:00Z', 'Misc. Expenses', NULL, -10.11, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1445, '2014-06-22 00:00:00Z', 'Stop&Shop', NULL, -136.26, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1446, '2014-06-25 00:00:00Z', 'Whole Foods', NULL, -108.38, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1447, '2014-06-27 00:00:00Z', 'Whole Foods', NULL, -50.76, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1448, '2014-06-28 00:00:00Z', 'Chevron', 'Gas', -35.87, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1449, '2014-06-23 00:00:00Z', 'Best Cleaners', 'Laundry', -22.99, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1450, '2014-06-22 00:00:00Z', 'Misc. Expenses', NULL, -12.15, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1451, '2014-06-24 00:00:00Z', 'Misc. Expenses', NULL, -10.52, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1452, '2014-06-26 00:00:00Z', 'Misc. Expenses', NULL, -5.15, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1453, '2014-06-28 00:00:00Z', 'Misc. Expenses', NULL, -14.51, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1454, '2014-06-11 00:00:00Z', 'Amazon', NULL, -42.69, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1455, '2014-06-21 00:00:00Z', 'Amazon', 'Software', -96.56, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1456, '2014-06-26 00:00:00Z', 'Amazon', 'AWS', -49.49, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1457, '2014-06-21 00:00:00Z', 'Transfer to AmEx', NULL, -1163.44, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1458, '2014-06-21 00:00:00Z', 'Transfer to Amazon', NULL, -211.93, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1459, '2014-06-21 00:00:00Z', 'Transfer to FIA', NULL, -513.55, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1460, '2014-06-21 00:00:00Z', 'Transfer from Checking', NULL, 1163.44, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1461, '2014-06-21 00:00:00Z', 'Transfer from Checking', NULL, 211.93, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1462, '2014-06-21 00:00:00Z', 'Transfer from Checking', NULL, 513.55, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1463, '2014-06-26 00:00:00Z', 'National Grid', 'Electic bill', -126.88, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1464, '2014-06-26 00:00:00Z', 'Orange County', 'Water bill', -149.24, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1465, '2014-06-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1466, '2014-06-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1467, '2014-06-26 00:00:00Z', 'BofA', 'ATM charges', -20.56, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1468, '2014-06-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1469, '2014-06-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1470, '2014-06-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1471, '2014-06-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1472, '2014-06-26 00:00:00Z', 'FIA Card Services', 'Cashback', 164.22, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1473, '2014-06-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -162.18, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1474, '2014-06-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -219.37, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1475, '2014-06-07 00:00:00Z', 'United Airlines', NULL, -800.95, 5, 22);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1476, '2014-06-07 00:00:00Z', 'Hilton', NULL, -962.43, 5, 22);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1477, '2014-07-01 00:00:00Z', 'Stop&Shop', NULL, -129.12, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1478, '2014-07-04 00:00:00Z', 'Whole Foods', NULL, -136.57, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1479, '2014-07-06 00:00:00Z', 'Whole Foods', NULL, -136.9, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1480, '2014-07-07 00:00:00Z', 'Chevron', 'Gas', -29.74, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1481, '2014-07-02 00:00:00Z', 'Best Cleaners', 'Laundry', -11.22, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1482, '2014-07-01 00:00:00Z', 'Misc. Expenses', NULL, -7.25, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1483, '2014-07-03 00:00:00Z', 'Misc. Expenses', NULL, -13.08, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1484, '2014-07-05 00:00:00Z', 'Misc. Expenses', NULL, -14.15, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1485, '2014-07-07 00:00:00Z', 'Misc. Expenses', NULL, -5.75, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1486, '2014-07-08 00:00:00Z', 'Stop&Shop', NULL, -82.06, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1487, '2014-07-11 00:00:00Z', 'Whole Foods', NULL, -136.02, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1488, '2014-07-13 00:00:00Z', 'Whole Foods', NULL, -114, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1489, '2014-07-14 00:00:00Z', 'Chevron', 'Gas', -32.09, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1490, '2014-07-09 00:00:00Z', 'Best Cleaners', 'Laundry', -16.79, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1491, '2014-07-08 00:00:00Z', 'Misc. Expenses', NULL, -7.08, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1492, '2014-07-10 00:00:00Z', 'Misc. Expenses', NULL, -8.27, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1493, '2014-07-12 00:00:00Z', 'Misc. Expenses', NULL, -6.67, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1494, '2014-07-14 00:00:00Z', 'Misc. Expenses', NULL, -13.48, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1495, '2014-07-15 00:00:00Z', 'Stop&Shop', NULL, -53.12, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1496, '2014-07-18 00:00:00Z', 'Whole Foods', NULL, -116.44, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1497, '2014-07-20 00:00:00Z', 'Whole Foods', NULL, -72.04, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1498, '2014-07-21 00:00:00Z', 'Chevron', 'Gas', -35.51, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1499, '2014-07-16 00:00:00Z', 'Best Cleaners', 'Laundry', -29.48, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1500, '2014-07-15 00:00:00Z', 'Misc. Expenses', NULL, -7.06, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1501, '2014-07-17 00:00:00Z', 'Misc. Expenses', NULL, -7.78, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1502, '2014-07-19 00:00:00Z', 'Misc. Expenses', NULL, -12.64, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1503, '2014-07-21 00:00:00Z', 'Misc. Expenses', NULL, -12.19, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1504, '2014-07-22 00:00:00Z', 'Stop&Shop', NULL, -121.05, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1505, '2014-07-25 00:00:00Z', 'Whole Foods', NULL, -72.7, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1506, '2014-07-27 00:00:00Z', 'Whole Foods', NULL, -115.73, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1507, '2014-07-28 00:00:00Z', 'Chevron', 'Gas', -40.03, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1508, '2014-07-23 00:00:00Z', 'Best Cleaners', 'Laundry', -19.68, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1509, '2014-07-22 00:00:00Z', 'Misc. Expenses', NULL, -5.87, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1510, '2014-07-24 00:00:00Z', 'Misc. Expenses', NULL, -10.06, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1511, '2014-07-26 00:00:00Z', 'Misc. Expenses', NULL, -12.66, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1512, '2014-07-28 00:00:00Z', 'Misc. Expenses', NULL, -10.9, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1513, '2014-07-11 00:00:00Z', 'Amazon', NULL, -93.12, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1514, '2014-07-21 00:00:00Z', 'Amazon', 'Software', -107.53, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1515, '2014-07-26 00:00:00Z', 'Amazon', 'AWS', -63.18, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1516, '2014-07-21 00:00:00Z', 'Transfer to AmEx', NULL, -1187.45, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1517, '2014-07-21 00:00:00Z', 'Transfer to Amazon', NULL, -196.06, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1518, '2014-07-21 00:00:00Z', 'Transfer to FIA', NULL, -606.15, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1519, '2014-07-21 00:00:00Z', 'Transfer from Checking', NULL, 1187.45, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1520, '2014-07-21 00:00:00Z', 'Transfer from Checking', NULL, 196.06, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1521, '2014-07-21 00:00:00Z', 'Transfer from Checking', NULL, 606.15, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1522, '2014-07-26 00:00:00Z', 'National Grid', 'Electic bill', -163.13, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1523, '2014-07-26 00:00:00Z', 'Orange County', 'Water bill', -139.95, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1524, '2014-07-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1525, '2014-07-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1526, '2014-07-26 00:00:00Z', 'BofA', 'ATM charges', -14.88, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1527, '2014-07-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1528, '2014-07-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1529, '2014-07-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1530, '2014-07-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1531, '2014-07-26 00:00:00Z', 'FIA Card Services', 'Cashback', 159.51, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1532, '2014-07-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -281.7, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1533, '2014-07-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -343.6, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1534, '2014-08-01 00:00:00Z', 'Stop&Shop', NULL, -90.29, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1535, '2014-08-04 00:00:00Z', 'Whole Foods', NULL, -121.7, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1536, '2014-08-06 00:00:00Z', 'Whole Foods', NULL, -148.76, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1537, '2014-08-07 00:00:00Z', 'Chevron', 'Gas', -46.52, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1538, '2014-08-02 00:00:00Z', 'Best Cleaners', 'Laundry', -23.46, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1539, '2014-08-01 00:00:00Z', 'Misc. Expenses', NULL, -9.79, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1540, '2014-08-03 00:00:00Z', 'Misc. Expenses', NULL, -7.88, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1541, '2014-08-05 00:00:00Z', 'Misc. Expenses', NULL, -13.45, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1542, '2014-08-07 00:00:00Z', 'Misc. Expenses', NULL, -11.25, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1543, '2014-08-08 00:00:00Z', 'Stop&Shop', NULL, -107.49, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1544, '2014-08-11 00:00:00Z', 'Whole Foods', NULL, -142.05, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1545, '2014-08-13 00:00:00Z', 'Whole Foods', NULL, -54.1, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1546, '2014-08-14 00:00:00Z', 'Chevron', 'Gas', -38.6, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1547, '2014-08-09 00:00:00Z', 'Best Cleaners', 'Laundry', -17.64, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1548, '2014-08-08 00:00:00Z', 'Misc. Expenses', NULL, -7.57, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1549, '2014-08-10 00:00:00Z', 'Misc. Expenses', NULL, -14.55, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1550, '2014-08-12 00:00:00Z', 'Misc. Expenses', NULL, -12.19, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1551, '2014-08-14 00:00:00Z', 'Misc. Expenses', NULL, -7.52, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1552, '2014-08-15 00:00:00Z', 'Stop&Shop', NULL, -101.99, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1553, '2014-08-18 00:00:00Z', 'Whole Foods', NULL, -59.89, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1554, '2014-08-20 00:00:00Z', 'Whole Foods', NULL, -121.45, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1555, '2014-08-21 00:00:00Z', 'Chevron', 'Gas', -41.35, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1556, '2014-08-16 00:00:00Z', 'Best Cleaners', 'Laundry', -19.67, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1557, '2014-08-15 00:00:00Z', 'Misc. Expenses', NULL, -11, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1558, '2014-08-17 00:00:00Z', 'Misc. Expenses', NULL, -10.44, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1559, '2014-08-19 00:00:00Z', 'Misc. Expenses', NULL, -13.82, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1560, '2014-08-21 00:00:00Z', 'Misc. Expenses', NULL, -5.88, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1561, '2014-08-22 00:00:00Z', 'Stop&Shop', NULL, -105.03, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1562, '2014-08-25 00:00:00Z', 'Whole Foods', NULL, -62.18, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1563, '2014-08-27 00:00:00Z', 'Whole Foods', NULL, -131.93, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1564, '2014-08-28 00:00:00Z', 'Chevron', 'Gas', -23.82, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1565, '2014-08-23 00:00:00Z', 'Best Cleaners', 'Laundry', -16.28, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1566, '2014-08-22 00:00:00Z', 'Misc. Expenses', NULL, -7.4, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1567, '2014-08-24 00:00:00Z', 'Misc. Expenses', NULL, -7.36, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1568, '2014-08-26 00:00:00Z', 'Misc. Expenses', NULL, -8.78, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1569, '2014-08-28 00:00:00Z', 'Misc. Expenses', NULL, -13.14, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1570, '2014-08-11 00:00:00Z', 'Amazon', NULL, -51.86, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1571, '2014-08-21 00:00:00Z', 'Amazon', 'Software', -60.04, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1572, '2014-08-26 00:00:00Z', 'Amazon', 'AWS', -114.55, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1573, '2014-08-21 00:00:00Z', 'Transfer to AmEx', NULL, -1171.99, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1574, '2014-08-21 00:00:00Z', 'Transfer to Amazon', NULL, -196.58, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1575, '2014-08-21 00:00:00Z', 'Transfer to FIA', NULL, -599.78, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1576, '2014-08-21 00:00:00Z', 'Transfer from Checking', NULL, 1171.99, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1577, '2014-08-21 00:00:00Z', 'Transfer from Checking', NULL, 196.58, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1578, '2014-08-21 00:00:00Z', 'Transfer from Checking', NULL, 599.78, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1579, '2014-08-26 00:00:00Z', 'National Grid', 'Electic bill', -112.92, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1580, '2014-08-26 00:00:00Z', 'Orange County', 'Water bill', -172.15, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1581, '2014-08-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1582, '2014-08-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1583, '2014-08-26 00:00:00Z', 'BofA', 'ATM charges', -21.19, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1584, '2014-08-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1585, '2014-08-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1586, '2014-08-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1587, '2014-08-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1588, '2014-08-26 00:00:00Z', 'FIA Card Services', 'Cashback', 125.99, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1589, '2014-08-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -365.77, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1590, '2014-08-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -274.21, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1591, '2014-09-01 00:00:00Z', 'Stop&Shop', NULL, -98.25, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1592, '2014-09-04 00:00:00Z', 'Whole Foods', NULL, -51.92, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1593, '2014-09-06 00:00:00Z', 'Whole Foods', NULL, -83.73, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1594, '2014-09-07 00:00:00Z', 'Chevron', 'Gas', -26.79, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1595, '2014-09-02 00:00:00Z', 'Best Cleaners', 'Laundry', -18.01, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1596, '2014-09-01 00:00:00Z', 'Misc. Expenses', NULL, -11.17, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1597, '2014-09-03 00:00:00Z', 'Misc. Expenses', NULL, -8.58, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1598, '2014-09-05 00:00:00Z', 'Misc. Expenses', NULL, -10.21, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1599, '2014-09-07 00:00:00Z', 'Misc. Expenses', NULL, -12.35, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1600, '2014-09-08 00:00:00Z', 'Stop&Shop', NULL, -93.21, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1601, '2014-09-11 00:00:00Z', 'Whole Foods', NULL, -135.23, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1602, '2014-09-13 00:00:00Z', 'Whole Foods', NULL, -87.97, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1603, '2014-09-14 00:00:00Z', 'Chevron', 'Gas', -46.76, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1604, '2014-09-09 00:00:00Z', 'Best Cleaners', 'Laundry', -28.26, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1605, '2014-09-08 00:00:00Z', 'Misc. Expenses', NULL, -7.97, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1606, '2014-09-10 00:00:00Z', 'Misc. Expenses', NULL, -7.49, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1607, '2014-09-12 00:00:00Z', 'Misc. Expenses', NULL, -8.94, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1608, '2014-09-14 00:00:00Z', 'Misc. Expenses', NULL, -12, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1609, '2014-09-15 00:00:00Z', 'Stop&Shop', NULL, -80.3, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1610, '2014-09-18 00:00:00Z', 'Whole Foods', NULL, -114.43, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1611, '2014-09-20 00:00:00Z', 'Whole Foods', NULL, -93.37, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1612, '2014-09-21 00:00:00Z', 'Chevron', 'Gas', -44.02, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1613, '2014-09-16 00:00:00Z', 'Best Cleaners', 'Laundry', -18.44, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1614, '2014-09-15 00:00:00Z', 'Misc. Expenses', NULL, -14.17, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1615, '2014-09-17 00:00:00Z', 'Misc. Expenses', NULL, -12.59, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1616, '2014-09-19 00:00:00Z', 'Misc. Expenses', NULL, -9.86, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1617, '2014-09-21 00:00:00Z', 'Misc. Expenses', NULL, -9.64, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1618, '2014-09-22 00:00:00Z', 'Stop&Shop', NULL, -109.96, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1619, '2014-09-25 00:00:00Z', 'Whole Foods', NULL, -123.38, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1620, '2014-09-27 00:00:00Z', 'Whole Foods', NULL, -148.19, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1621, '2014-09-28 00:00:00Z', 'Chevron', 'Gas', -29.17, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1622, '2014-09-23 00:00:00Z', 'Best Cleaners', 'Laundry', -14.28, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1623, '2014-09-22 00:00:00Z', 'Misc. Expenses', NULL, -9.26, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1624, '2014-09-24 00:00:00Z', 'Misc. Expenses', NULL, -7.66, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1625, '2014-09-26 00:00:00Z', 'Misc. Expenses', NULL, -10.11, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1626, '2014-09-28 00:00:00Z', 'Misc. Expenses', NULL, -9.28, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1627, '2014-09-11 00:00:00Z', 'Amazon', NULL, -83, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1628, '2014-09-21 00:00:00Z', 'Amazon', 'Software', -47.49, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1629, '2014-09-26 00:00:00Z', 'Amazon', 'AWS', -91.58, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1630, '2014-09-21 00:00:00Z', 'Transfer to AmEx', NULL, -1167.04, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1631, '2014-09-21 00:00:00Z', 'Transfer to Amazon', NULL, -207.62, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1632, '2014-09-21 00:00:00Z', 'Transfer to FIA', NULL, -607.69, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1633, '2014-09-21 00:00:00Z', 'Transfer from Checking', NULL, 1167.04, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1634, '2014-09-21 00:00:00Z', 'Transfer from Checking', NULL, 207.62, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1635, '2014-09-21 00:00:00Z', 'Transfer from Checking', NULL, 607.69, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1636, '2014-09-26 00:00:00Z', 'National Grid', 'Electic bill', -139.53, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1637, '2014-09-26 00:00:00Z', 'Orange County', 'Water bill', -147.81, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1638, '2014-09-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1639, '2014-09-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1640, '2014-09-26 00:00:00Z', 'BofA', 'ATM charges', -18.95, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1641, '2014-09-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1642, '2014-09-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1643, '2014-09-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1644, '2014-09-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1645, '2014-09-26 00:00:00Z', 'FIA Card Services', 'Cashback', 155.48, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1646, '2014-09-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -338.64, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1647, '2014-09-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -101.26, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1648, '2014-10-01 00:00:00Z', 'Stop&Shop', NULL, -77.1, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1649, '2014-10-04 00:00:00Z', 'Whole Foods', NULL, -102.34, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1650, '2014-10-06 00:00:00Z', 'Whole Foods', NULL, -59.43, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1651, '2014-10-07 00:00:00Z', 'Chevron', 'Gas', -47.87, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1652, '2014-10-02 00:00:00Z', 'Best Cleaners', 'Laundry', -17.08, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1653, '2014-10-01 00:00:00Z', 'Misc. Expenses', NULL, -10.62, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1654, '2014-10-03 00:00:00Z', 'Misc. Expenses', NULL, -7.01, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1655, '2014-10-05 00:00:00Z', 'Misc. Expenses', NULL, -11.82, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1656, '2014-10-07 00:00:00Z', 'Misc. Expenses', NULL, -13.16, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1657, '2014-10-08 00:00:00Z', 'Stop&Shop', NULL, -76.43, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1658, '2014-10-11 00:00:00Z', 'Whole Foods', NULL, -149.76, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1659, '2014-10-13 00:00:00Z', 'Whole Foods', NULL, -121.19, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1660, '2014-10-14 00:00:00Z', 'Chevron', 'Gas', -36.15, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1661, '2014-10-09 00:00:00Z', 'Best Cleaners', 'Laundry', -17.47, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1662, '2014-10-08 00:00:00Z', 'Misc. Expenses', NULL, -6.38, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1663, '2014-10-10 00:00:00Z', 'Misc. Expenses', NULL, -7.29, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1664, '2014-10-12 00:00:00Z', 'Misc. Expenses', NULL, -11.67, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1665, '2014-10-14 00:00:00Z', 'Misc. Expenses', NULL, -8.7, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1666, '2014-10-15 00:00:00Z', 'Stop&Shop', NULL, -93.6, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1667, '2014-10-18 00:00:00Z', 'Whole Foods', NULL, -72.33, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1668, '2014-10-20 00:00:00Z', 'Whole Foods', NULL, -120.86, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1669, '2014-10-21 00:00:00Z', 'Chevron', 'Gas', -26.35, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1670, '2014-10-16 00:00:00Z', 'Best Cleaners', 'Laundry', -12.24, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1671, '2014-10-15 00:00:00Z', 'Misc. Expenses', NULL, -8.74, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1672, '2014-10-17 00:00:00Z', 'Misc. Expenses', NULL, -10.21, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1673, '2014-10-19 00:00:00Z', 'Misc. Expenses', NULL, -11.1, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1674, '2014-10-21 00:00:00Z', 'Misc. Expenses', NULL, -12.63, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1675, '2014-10-22 00:00:00Z', 'Stop&Shop', NULL, -90.64, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1676, '2014-10-25 00:00:00Z', 'Whole Foods', NULL, -98.43, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1677, '2014-10-27 00:00:00Z', 'Whole Foods', NULL, -148.97, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1678, '2014-10-28 00:00:00Z', 'Chevron', 'Gas', -33.73, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1679, '2014-10-23 00:00:00Z', 'Best Cleaners', 'Laundry', -29.5, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1680, '2014-10-22 00:00:00Z', 'Misc. Expenses', NULL, -7.03, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1681, '2014-10-24 00:00:00Z', 'Misc. Expenses', NULL, -14.78, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1682, '2014-10-26 00:00:00Z', 'Misc. Expenses', NULL, -6.57, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1683, '2014-10-28 00:00:00Z', 'Misc. Expenses', NULL, -10.15, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1684, '2014-10-11 00:00:00Z', 'Amazon', NULL, -85.61, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1685, '2014-10-21 00:00:00Z', 'Amazon', 'Software', -43.95, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1686, '2014-10-26 00:00:00Z', 'Amazon', 'AWS', -52.93, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1687, '2014-10-21 00:00:00Z', 'Transfer to AmEx', NULL, -1164.31, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1688, '2014-10-21 00:00:00Z', 'Transfer to Amazon', NULL, -180.75, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1689, '2014-10-21 00:00:00Z', 'Transfer to FIA', NULL, -626.29, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1690, '2014-10-21 00:00:00Z', 'Transfer from Checking', NULL, 1164.31, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1691, '2014-10-21 00:00:00Z', 'Transfer from Checking', NULL, 180.75, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1692, '2014-10-21 00:00:00Z', 'Transfer from Checking', NULL, 626.29, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1693, '2014-10-26 00:00:00Z', 'National Grid', 'Electic bill', -134.55, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1694, '2014-10-26 00:00:00Z', 'Orange County', 'Water bill', -171.3, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1695, '2014-10-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1696, '2014-10-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1697, '2014-10-26 00:00:00Z', 'BofA', 'ATM charges', -12.29, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1698, '2014-10-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1699, '2014-10-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1700, '2014-10-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1701, '2014-10-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1702, '2014-10-26 00:00:00Z', 'FIA Card Services', 'Cashback', 187.44, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1703, '2014-10-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -320.76, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1704, '2014-10-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -323.6, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1705, '2014-11-01 00:00:00Z', 'Stop&Shop', NULL, -117.13, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1706, '2014-11-04 00:00:00Z', 'Whole Foods', NULL, -73.88, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1707, '2014-11-06 00:00:00Z', 'Whole Foods', NULL, -65.31, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1708, '2014-11-07 00:00:00Z', 'Chevron', 'Gas', -37.28, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1709, '2014-11-02 00:00:00Z', 'Best Cleaners', 'Laundry', -23.1, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1710, '2014-11-01 00:00:00Z', 'Misc. Expenses', NULL, -10.9, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1711, '2014-11-03 00:00:00Z', 'Misc. Expenses', NULL, -12.31, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1712, '2014-11-05 00:00:00Z', 'Misc. Expenses', NULL, -9.83, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1713, '2014-11-07 00:00:00Z', 'Misc. Expenses', NULL, -8.61, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1714, '2014-11-08 00:00:00Z', 'Stop&Shop', NULL, -79.14, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1715, '2014-11-11 00:00:00Z', 'Whole Foods', NULL, -107.41, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1716, '2014-11-13 00:00:00Z', 'Whole Foods', NULL, -108.61, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1717, '2014-11-14 00:00:00Z', 'Chevron', 'Gas', -25.07, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1718, '2014-11-09 00:00:00Z', 'Best Cleaners', 'Laundry', -27.66, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1719, '2014-11-08 00:00:00Z', 'Misc. Expenses', NULL, -12.66, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1720, '2014-11-10 00:00:00Z', 'Misc. Expenses', NULL, -9.24, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1721, '2014-11-12 00:00:00Z', 'Misc. Expenses', NULL, -8.61, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1722, '2014-11-14 00:00:00Z', 'Misc. Expenses', NULL, -6.73, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1723, '2014-11-15 00:00:00Z', 'Stop&Shop', NULL, -99.92, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1724, '2014-11-18 00:00:00Z', 'Whole Foods', NULL, -129.94, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1725, '2014-11-20 00:00:00Z', 'Whole Foods', NULL, -91.32, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1726, '2014-11-21 00:00:00Z', 'Chevron', 'Gas', -42.68, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1727, '2014-11-16 00:00:00Z', 'Best Cleaners', 'Laundry', -20.59, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1728, '2014-11-15 00:00:00Z', 'Misc. Expenses', NULL, -6.32, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1729, '2014-11-17 00:00:00Z', 'Misc. Expenses', NULL, -14.55, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1730, '2014-11-19 00:00:00Z', 'Misc. Expenses', NULL, -6.26, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1731, '2014-11-21 00:00:00Z', 'Misc. Expenses', NULL, -5.67, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1732, '2014-11-22 00:00:00Z', 'Stop&Shop', NULL, -82.41, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1733, '2014-11-25 00:00:00Z', 'Whole Foods', NULL, -88.41, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1734, '2014-11-27 00:00:00Z', 'Whole Foods', NULL, -52.18, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1735, '2014-11-28 00:00:00Z', 'Chevron', 'Gas', -42.02, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1736, '2014-11-23 00:00:00Z', 'Best Cleaners', 'Laundry', -20.73, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1737, '2014-11-22 00:00:00Z', 'Misc. Expenses', NULL, -12.55, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1738, '2014-11-24 00:00:00Z', 'Misc. Expenses', NULL, -8.09, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1739, '2014-11-26 00:00:00Z', 'Misc. Expenses', NULL, -5.07, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1740, '2014-11-28 00:00:00Z', 'Misc. Expenses', NULL, -7.35, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1741, '2014-11-11 00:00:00Z', 'Amazon', NULL, -69.55, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1742, '2014-11-21 00:00:00Z', 'Amazon', 'Software', -93.63, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1743, '2014-11-26 00:00:00Z', 'Amazon', 'AWS', -73.18, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1744, '2014-11-21 00:00:00Z', 'Transfer to AmEx', NULL, -1109.05, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1745, '2014-11-21 00:00:00Z', 'Transfer to Amazon', NULL, -180.3, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1746, '2014-11-21 00:00:00Z', 'Transfer to FIA', NULL, -636.26, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1747, '2014-11-21 00:00:00Z', 'Transfer from Checking', NULL, 1109.05, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1748, '2014-11-21 00:00:00Z', 'Transfer from Checking', NULL, 180.30, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1749, '2014-11-21 00:00:00Z', 'Transfer from Checking', NULL, 636.26, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1750, '2014-11-26 00:00:00Z', 'National Grid', 'Electic bill', -151.95, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1751, '2014-11-26 00:00:00Z', 'Orange County', 'Water bill', -198.09, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1752, '2014-11-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1753, '2014-11-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1754, '2014-11-26 00:00:00Z', 'BofA', 'ATM charges', -16.7, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1755, '2014-11-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1756, '2014-11-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1757, '2014-11-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1758, '2014-11-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1759, '2014-11-26 00:00:00Z', 'FIA Card Services', 'Cashback', 198.60, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1760, '2014-11-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -301.51, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1761, '2014-11-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -162.03, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1762, '2014-12-01 00:00:00Z', 'Stop&Shop', NULL, -68.08, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1763, '2014-12-04 00:00:00Z', 'Whole Foods', NULL, -57.47, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1764, '2014-12-06 00:00:00Z', 'Whole Foods', NULL, -74.17, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1765, '2014-12-07 00:00:00Z', 'Chevron', 'Gas', -31.45, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1766, '2014-12-02 00:00:00Z', 'Best Cleaners', 'Laundry', -21.97, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1767, '2014-12-01 00:00:00Z', 'Misc. Expenses', NULL, -11.09, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1768, '2014-12-03 00:00:00Z', 'Misc. Expenses', NULL, -9.84, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1769, '2014-12-05 00:00:00Z', 'Misc. Expenses', NULL, -13.18, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1770, '2014-12-07 00:00:00Z', 'Misc. Expenses', NULL, -11.17, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1771, '2014-12-08 00:00:00Z', 'Stop&Shop', NULL, -84.33, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1772, '2014-12-11 00:00:00Z', 'Whole Foods', NULL, -70.41, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1773, '2014-12-13 00:00:00Z', 'Whole Foods', NULL, -119.18, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1774, '2014-12-14 00:00:00Z', 'Chevron', 'Gas', -39.91, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1775, '2014-12-09 00:00:00Z', 'Best Cleaners', 'Laundry', -15.09, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1776, '2014-12-08 00:00:00Z', 'Misc. Expenses', NULL, -9.65, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1777, '2014-12-10 00:00:00Z', 'Misc. Expenses', NULL, -9.23, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1778, '2014-12-12 00:00:00Z', 'Misc. Expenses', NULL, -11.7, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1779, '2014-12-14 00:00:00Z', 'Misc. Expenses', NULL, -7.8, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1780, '2014-12-15 00:00:00Z', 'Stop&Shop', NULL, -113.35, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1781, '2014-12-18 00:00:00Z', 'Whole Foods', NULL, -147.45, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1782, '2014-12-20 00:00:00Z', 'Whole Foods', NULL, -54.82, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1783, '2014-12-21 00:00:00Z', 'Chevron', 'Gas', -34.19, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1784, '2014-12-16 00:00:00Z', 'Best Cleaners', 'Laundry', -10.48, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1785, '2014-12-15 00:00:00Z', 'Misc. Expenses', NULL, -5.01, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1786, '2014-12-17 00:00:00Z', 'Misc. Expenses', NULL, -10.08, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1787, '2014-12-19 00:00:00Z', 'Misc. Expenses', NULL, -10.19, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1788, '2014-12-21 00:00:00Z', 'Misc. Expenses', NULL, -12.12, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1789, '2014-12-22 00:00:00Z', 'Stop&Shop', NULL, -92.91, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1790, '2014-12-25 00:00:00Z', 'Whole Foods', NULL, -92.96, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1791, '2014-12-27 00:00:00Z', 'Whole Foods', NULL, -58.55, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1792, '2014-12-28 00:00:00Z', 'Chevron', 'Gas', -22.73, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1793, '2014-12-23 00:00:00Z', 'Best Cleaners', 'Laundry', -29.98, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1794, '2014-12-22 00:00:00Z', 'Misc. Expenses', NULL, -14.43, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1795, '2014-12-24 00:00:00Z', 'Misc. Expenses', NULL, -8.36, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1796, '2014-12-26 00:00:00Z', 'Misc. Expenses', NULL, -14.26, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1797, '2014-12-28 00:00:00Z', 'Misc. Expenses', NULL, -6.9, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1798, '2014-12-11 00:00:00Z', 'Amazon', NULL, -50.37, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1799, '2014-12-21 00:00:00Z', 'Amazon', 'Software', -106.16, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1800, '2014-12-26 00:00:00Z', 'Amazon', 'AWS', -104.67, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1801, '2014-12-21 00:00:00Z', 'Transfer to AmEx', NULL, -1182.57, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1802, '2014-12-21 00:00:00Z', 'Transfer to Amazon', NULL, -217.48, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1803, '2014-12-21 00:00:00Z', 'Transfer to FIA', NULL, -602.01, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1804, '2014-12-21 00:00:00Z', 'Transfer from Checking', NULL, 1182.57, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1805, '2014-12-21 00:00:00Z', 'Transfer from Checking', NULL, 217.48, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1806, '2014-12-21 00:00:00Z', 'Transfer from Checking', NULL, 602.01, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1807, '2014-12-26 00:00:00Z', 'National Grid', 'Electic bill', -176.38, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1808, '2014-12-26 00:00:00Z', 'Orange County', 'Water bill', -107.5, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1809, '2014-12-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1810, '2014-12-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1811, '2014-12-26 00:00:00Z', 'BofA', 'ATM charges', -21.25, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1812, '2014-12-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1813, '2014-12-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1814, '2014-12-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1815, '2014-12-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1816, '2014-12-26 00:00:00Z', 'FIA Card Services', 'Cashback', 125.15, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1817, '2014-12-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -392.88, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1818, '2014-12-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -136.5, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1819, '2014-12-31 00:00:00Z', 'Red Cross', NULL, -5000, 8, 10);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1820, '2015-01-01 00:00:00Z', 'Stop&Shop', NULL, -83.48, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1821, '2015-01-04 00:00:00Z', 'Whole Foods', NULL, -60.96, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1822, '2015-01-06 00:00:00Z', 'Whole Foods', NULL, -120.01, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1823, '2015-01-07 00:00:00Z', 'Chevron', 'Gas', -49.07, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1824, '2015-01-02 00:00:00Z', 'Best Cleaners', 'Laundry', -28.47, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1825, '2015-01-01 00:00:00Z', 'Misc. Expenses', NULL, -13.49, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1826, '2015-01-03 00:00:00Z', 'Misc. Expenses', NULL, -9.14, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1827, '2015-01-05 00:00:00Z', 'Misc. Expenses', NULL, -14.2, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1828, '2015-01-07 00:00:00Z', 'Misc. Expenses', NULL, -10.38, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1829, '2015-01-08 00:00:00Z', 'Stop&Shop', NULL, -66.32, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1830, '2015-01-11 00:00:00Z', 'Whole Foods', NULL, -88.01, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1831, '2015-01-13 00:00:00Z', 'Whole Foods', NULL, -86.74, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1832, '2015-01-14 00:00:00Z', 'Chevron', 'Gas', -46.66, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1833, '2015-01-09 00:00:00Z', 'Best Cleaners', 'Laundry', -21.74, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1834, '2015-01-08 00:00:00Z', 'Misc. Expenses', NULL, -7.62, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1835, '2015-01-10 00:00:00Z', 'Misc. Expenses', NULL, -12.56, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1836, '2015-01-12 00:00:00Z', 'Misc. Expenses', NULL, -10.06, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1837, '2015-01-14 00:00:00Z', 'Misc. Expenses', NULL, -9.83, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1838, '2015-01-15 00:00:00Z', 'Stop&Shop', NULL, -139.67, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1839, '2015-01-18 00:00:00Z', 'Whole Foods', NULL, -55.02, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1840, '2015-01-20 00:00:00Z', 'Whole Foods', NULL, -89.55, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1841, '2015-01-21 00:00:00Z', 'Chevron', 'Gas', -33.8, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1842, '2015-01-16 00:00:00Z', 'Best Cleaners', 'Laundry', -18.47, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1843, '2015-01-15 00:00:00Z', 'Misc. Expenses', NULL, -6.22, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1844, '2015-01-17 00:00:00Z', 'Misc. Expenses', NULL, -9.97, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1845, '2015-01-19 00:00:00Z', 'Misc. Expenses', NULL, -7.14, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1846, '2015-01-21 00:00:00Z', 'Misc. Expenses', NULL, -9.15, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1847, '2015-01-22 00:00:00Z', 'Stop&Shop', NULL, -124.61, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1848, '2015-01-25 00:00:00Z', 'Whole Foods', NULL, -123.22, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1849, '2015-01-27 00:00:00Z', 'Whole Foods', NULL, -66.44, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1850, '2015-01-28 00:00:00Z', 'Chevron', 'Gas', -21.3, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1851, '2015-01-23 00:00:00Z', 'Best Cleaners', 'Laundry', -22.11, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1852, '2015-01-22 00:00:00Z', 'Misc. Expenses', NULL, -13.27, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1853, '2015-01-24 00:00:00Z', 'Misc. Expenses', NULL, -11.5, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1854, '2015-01-26 00:00:00Z', 'Misc. Expenses', NULL, -13.12, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1855, '2015-01-28 00:00:00Z', 'Misc. Expenses', NULL, -6.87, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1856, '2015-01-11 00:00:00Z', 'Amazon', NULL, -45.52, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1857, '2015-01-21 00:00:00Z', 'Amazon', 'Software', -119, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1858, '2015-01-26 00:00:00Z', 'Amazon', 'AWS', -42.95, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1859, '2015-01-21 00:00:00Z', 'Transfer to AmEx', NULL, -1170.47, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1860, '2015-01-21 00:00:00Z', 'Transfer to Amazon', NULL, -181.53, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1861, '2015-01-21 00:00:00Z', 'Transfer to FIA', NULL, -636.82, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1862, '2015-01-21 00:00:00Z', 'Transfer from Checking', NULL, 1170.47, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1863, '2015-01-21 00:00:00Z', 'Transfer from Checking', NULL, 181.53, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1864, '2015-01-21 00:00:00Z', 'Transfer from Checking', NULL, 636.82, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1865, '2015-01-26 00:00:00Z', 'National Grid', 'Electic bill', -195.25, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1866, '2015-01-26 00:00:00Z', 'Orange County', 'Water bill', -140.45, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1867, '2015-01-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1868, '2015-01-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1869, '2015-01-26 00:00:00Z', 'BofA', 'ATM charges', -21.31, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1870, '2015-01-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1871, '2015-01-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1872, '2015-01-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1873, '2015-01-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1874, '2015-01-26 00:00:00Z', 'FIA Card Services', 'Cashback', 137.64, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1875, '2015-01-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -166.08, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1876, '2015-01-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -127.24, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1877, '2015-02-01 00:00:00Z', 'Stop&Shop', NULL, -135.42, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1878, '2015-02-04 00:00:00Z', 'Whole Foods', NULL, -68.32, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1879, '2015-02-06 00:00:00Z', 'Whole Foods', NULL, -141.53, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1880, '2015-02-07 00:00:00Z', 'Chevron', 'Gas', -28.13, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1881, '2015-02-02 00:00:00Z', 'Best Cleaners', 'Laundry', -13.91, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1882, '2015-02-01 00:00:00Z', 'Misc. Expenses', NULL, -5.85, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1883, '2015-02-03 00:00:00Z', 'Misc. Expenses', NULL, -11.8, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1884, '2015-02-05 00:00:00Z', 'Misc. Expenses', NULL, -5.78, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1885, '2015-02-07 00:00:00Z', 'Misc. Expenses', NULL, -11.04, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1886, '2015-02-08 00:00:00Z', 'Stop&Shop', NULL, -91.29, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1887, '2015-02-11 00:00:00Z', 'Whole Foods', NULL, -85.84, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1888, '2015-02-13 00:00:00Z', 'Whole Foods', NULL, -82.21, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1889, '2015-02-14 00:00:00Z', 'Chevron', 'Gas', -38.37, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1890, '2015-02-09 00:00:00Z', 'Best Cleaners', 'Laundry', -23.03, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1891, '2015-02-08 00:00:00Z', 'Misc. Expenses', NULL, -7.16, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1892, '2015-02-10 00:00:00Z', 'Misc. Expenses', NULL, -5.03, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1893, '2015-02-12 00:00:00Z', 'Misc. Expenses', NULL, -6.98, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1894, '2015-02-14 00:00:00Z', 'Misc. Expenses', NULL, -10.37, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1895, '2015-02-15 00:00:00Z', 'Stop&Shop', NULL, -143.21, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1896, '2015-02-18 00:00:00Z', 'Whole Foods', NULL, -122.73, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1897, '2015-02-20 00:00:00Z', 'Whole Foods', NULL, -135.33, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1898, '2015-02-21 00:00:00Z', 'Chevron', 'Gas', -25.02, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1899, '2015-02-16 00:00:00Z', 'Best Cleaners', 'Laundry', -18.04, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1900, '2015-02-15 00:00:00Z', 'Misc. Expenses', NULL, -5.38, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1901, '2015-02-17 00:00:00Z', 'Misc. Expenses', NULL, -12.03, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1902, '2015-02-19 00:00:00Z', 'Misc. Expenses', NULL, -8.73, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1903, '2015-02-21 00:00:00Z', 'Misc. Expenses', NULL, -13.38, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1904, '2015-02-22 00:00:00Z', 'Stop&Shop', NULL, -118.71, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1905, '2015-02-25 00:00:00Z', 'Whole Foods', NULL, -146.26, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1906, '2015-02-27 00:00:00Z', 'Whole Foods', NULL, -126.55, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1907, '2015-02-28 00:00:00Z', 'Chevron', 'Gas', -24.06, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1908, '2015-02-23 00:00:00Z', 'Best Cleaners', 'Laundry', -17.67, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1909, '2015-02-22 00:00:00Z', 'Misc. Expenses', NULL, -7.56, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1910, '2015-02-24 00:00:00Z', 'Misc. Expenses', NULL, -8.39, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1911, '2015-02-26 00:00:00Z', 'Misc. Expenses', NULL, -12.32, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1912, '2015-02-28 00:00:00Z', 'Misc. Expenses', NULL, -8.27, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1913, '2015-02-11 00:00:00Z', 'Amazon', NULL, -94.97, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1914, '2015-02-21 00:00:00Z', 'Amazon', 'Software', -74.99, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1915, '2015-02-26 00:00:00Z', 'Amazon', 'AWS', -81.23, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1916, '2015-02-21 00:00:00Z', 'Transfer to AmEx', NULL, -1129.44, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1917, '2015-02-21 00:00:00Z', 'Transfer to Amazon', NULL, -219.5, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1918, '2015-02-21 00:00:00Z', 'Transfer to FIA', NULL, -613.66, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1919, '2015-02-21 00:00:00Z', 'Transfer from Checking', NULL, 1129.44, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1920, '2015-02-21 00:00:00Z', 'Transfer from Checking', NULL, 219.50, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1921, '2015-02-21 00:00:00Z', 'Transfer from Checking', NULL, 613.66, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1922, '2015-02-26 00:00:00Z', 'National Grid', 'Electic bill', -130.29, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1923, '2015-02-26 00:00:00Z', 'Orange County', 'Water bill', -151.46, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1924, '2015-02-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1925, '2015-02-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1926, '2015-02-26 00:00:00Z', 'BofA', 'ATM charges', -16.83, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1927, '2015-02-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1928, '2015-02-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1929, '2015-02-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1930, '2015-02-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1931, '2015-02-26 00:00:00Z', 'FIA Card Services', 'Cashback', 169.96, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1932, '2015-02-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -317.39, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1933, '2015-02-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -307.39, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1934, '2015-03-01 00:00:00Z', 'Stop&Shop', NULL, -82.88, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1935, '2015-03-04 00:00:00Z', 'Whole Foods', NULL, -135.41, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1936, '2015-03-06 00:00:00Z', 'Whole Foods', NULL, -107.66, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1937, '2015-03-07 00:00:00Z', 'Chevron', 'Gas', -23.65, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1938, '2015-03-02 00:00:00Z', 'Best Cleaners', 'Laundry', -25.67, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1939, '2015-03-01 00:00:00Z', 'Misc. Expenses', NULL, -7.13, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1940, '2015-03-03 00:00:00Z', 'Misc. Expenses', NULL, -9.82, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1941, '2015-03-05 00:00:00Z', 'Misc. Expenses', NULL, -12.93, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1942, '2015-03-07 00:00:00Z', 'Misc. Expenses', NULL, -10.09, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1943, '2015-03-08 00:00:00Z', 'Stop&Shop', NULL, -58.11, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1944, '2015-03-11 00:00:00Z', 'Whole Foods', NULL, -133.59, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1945, '2015-03-13 00:00:00Z', 'Whole Foods', NULL, -130.09, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1946, '2015-03-14 00:00:00Z', 'Chevron', 'Gas', -44.95, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1947, '2015-03-09 00:00:00Z', 'Best Cleaners', 'Laundry', -22.99, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1948, '2015-03-08 00:00:00Z', 'Misc. Expenses', NULL, -13.93, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1949, '2015-03-10 00:00:00Z', 'Misc. Expenses', NULL, -14.64, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1950, '2015-03-12 00:00:00Z', 'Misc. Expenses', NULL, -14.33, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1951, '2015-03-14 00:00:00Z', 'Misc. Expenses', NULL, -14.19, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1952, '2015-03-15 00:00:00Z', 'Stop&Shop', NULL, -126.53, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1953, '2015-03-18 00:00:00Z', 'Whole Foods', NULL, -85.9, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1954, '2015-03-20 00:00:00Z', 'Whole Foods', NULL, -100.37, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1955, '2015-03-21 00:00:00Z', 'Chevron', 'Gas', -29.62, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1956, '2015-03-16 00:00:00Z', 'Best Cleaners', 'Laundry', -29.54, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1957, '2015-03-15 00:00:00Z', 'Misc. Expenses', NULL, -10.49, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1958, '2015-03-17 00:00:00Z', 'Misc. Expenses', NULL, -5.23, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1959, '2015-03-19 00:00:00Z', 'Misc. Expenses', NULL, -14.38, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1960, '2015-03-21 00:00:00Z', 'Misc. Expenses', NULL, -14.69, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1961, '2015-03-22 00:00:00Z', 'Stop&Shop', NULL, -120.84, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1962, '2015-03-25 00:00:00Z', 'Whole Foods', NULL, -97.05, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1963, '2015-03-27 00:00:00Z', 'Whole Foods', NULL, -149.31, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1964, '2015-03-28 00:00:00Z', 'Chevron', 'Gas', -33.4, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1965, '2015-03-23 00:00:00Z', 'Best Cleaners', 'Laundry', -28.45, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1966, '2015-03-22 00:00:00Z', 'Misc. Expenses', NULL, -6.4, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1967, '2015-03-24 00:00:00Z', 'Misc. Expenses', NULL, -12.74, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1968, '2015-03-26 00:00:00Z', 'Misc. Expenses', NULL, -9.63, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1969, '2015-03-28 00:00:00Z', 'Misc. Expenses', NULL, -8.93, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1970, '2015-03-11 00:00:00Z', 'Amazon', NULL, -64.33, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1971, '2015-03-21 00:00:00Z', 'Amazon', 'Software', -91.93, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1972, '2015-03-26 00:00:00Z', 'Amazon', 'AWS', -93.16, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1973, '2015-03-21 00:00:00Z', 'Transfer to AmEx', NULL, -1141.42, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1974, '2015-03-21 00:00:00Z', 'Transfer to Amazon', NULL, -208.1, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1975, '2015-03-21 00:00:00Z', 'Transfer to FIA', NULL, -580.06, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1976, '2015-03-21 00:00:00Z', 'Transfer from Checking', NULL, 1141.42, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1977, '2015-03-21 00:00:00Z', 'Transfer from Checking', NULL, 208.10, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1978, '2015-03-21 00:00:00Z', 'Transfer from Checking', NULL, 580.06, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1979, '2015-03-26 00:00:00Z', 'National Grid', 'Electic bill', -148.04, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1980, '2015-03-26 00:00:00Z', 'Orange County', 'Water bill', -128.43, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1981, '2015-03-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1982, '2015-03-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1983, '2015-03-26 00:00:00Z', 'BofA', 'ATM charges', -11.04, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1984, '2015-03-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1985, '2015-03-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1986, '2015-03-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1987, '2015-03-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1988, '2015-03-26 00:00:00Z', 'FIA Card Services', 'Cashback', 154.28, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1989, '2015-03-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -136.08, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1990, '2015-03-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -185, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1991, '2015-04-01 00:00:00Z', 'Stop&Shop', NULL, -106.66, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1992, '2015-04-04 00:00:00Z', 'Whole Foods', NULL, -122.69, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1993, '2015-04-06 00:00:00Z', 'Whole Foods', NULL, -114.13, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1994, '2015-04-07 00:00:00Z', 'Chevron', 'Gas', -25.44, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1995, '2015-04-02 00:00:00Z', 'Best Cleaners', 'Laundry', -29.58, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1996, '2015-04-01 00:00:00Z', 'Misc. Expenses', NULL, -8.63, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1997, '2015-04-03 00:00:00Z', 'Misc. Expenses', NULL, -5.14, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1998, '2015-04-05 00:00:00Z', 'Misc. Expenses', NULL, -10.9, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (1999, '2015-04-07 00:00:00Z', 'Misc. Expenses', NULL, -12.22, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2000, '2015-04-08 00:00:00Z', 'Stop&Shop', NULL, -114.12, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2001, '2015-04-11 00:00:00Z', 'Whole Foods', NULL, -103.1, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2002, '2015-04-13 00:00:00Z', 'Whole Foods', NULL, -64.57, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2003, '2015-04-14 00:00:00Z', 'Chevron', 'Gas', -38.47, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2004, '2015-04-09 00:00:00Z', 'Best Cleaners', 'Laundry', -11.71, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2005, '2015-04-08 00:00:00Z', 'Misc. Expenses', NULL, -13.37, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2006, '2015-04-10 00:00:00Z', 'Misc. Expenses', NULL, -10.48, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2007, '2015-04-12 00:00:00Z', 'Misc. Expenses', NULL, -9.4, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2008, '2015-04-14 00:00:00Z', 'Misc. Expenses', NULL, -12.64, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2009, '2015-04-15 00:00:00Z', 'Stop&Shop', NULL, -83.25, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2010, '2015-04-18 00:00:00Z', 'Whole Foods', NULL, -143.17, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2011, '2015-04-20 00:00:00Z', 'Whole Foods', NULL, -71.19, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2012, '2015-04-21 00:00:00Z', 'Chevron', 'Gas', -40.5, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2013, '2015-04-16 00:00:00Z', 'Best Cleaners', 'Laundry', -23.71, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2014, '2015-04-15 00:00:00Z', 'Misc. Expenses', NULL, -14.49, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2015, '2015-04-17 00:00:00Z', 'Misc. Expenses', NULL, -11.65, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2016, '2015-04-19 00:00:00Z', 'Misc. Expenses', NULL, -7.06, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2017, '2015-04-21 00:00:00Z', 'Misc. Expenses', NULL, -10.46, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2018, '2015-04-22 00:00:00Z', 'Stop&Shop', NULL, -55.98, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2019, '2015-04-25 00:00:00Z', 'Whole Foods', NULL, -87.5, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2020, '2015-04-27 00:00:00Z', 'Whole Foods', NULL, -129.31, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2021, '2015-04-28 00:00:00Z', 'Chevron', 'Gas', -28.1, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2022, '2015-04-23 00:00:00Z', 'Best Cleaners', 'Laundry', -15, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2023, '2015-04-22 00:00:00Z', 'Misc. Expenses', NULL, -11.31, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2024, '2015-04-24 00:00:00Z', 'Misc. Expenses', NULL, -12.05, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2025, '2015-04-26 00:00:00Z', 'Misc. Expenses', NULL, -10.87, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2026, '2015-04-28 00:00:00Z', 'Misc. Expenses', NULL, -7.09, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2027, '2015-04-11 00:00:00Z', 'Amazon', NULL, -57.5, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2028, '2015-04-21 00:00:00Z', 'Amazon', 'Software', -115.55, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2029, '2015-04-26 00:00:00Z', 'Amazon', 'AWS', -101.1, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2030, '2015-04-21 00:00:00Z', 'Transfer to AmEx', NULL, -1101.98, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2031, '2015-04-21 00:00:00Z', 'Transfer to Amazon', NULL, -186.02, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2032, '2015-04-21 00:00:00Z', 'Transfer to FIA', NULL, -561.87, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2033, '2015-04-21 00:00:00Z', 'Transfer from Checking', NULL, 1101.98, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2034, '2015-04-21 00:00:00Z', 'Transfer from Checking', NULL, 186.02, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2035, '2015-04-21 00:00:00Z', 'Transfer from Checking', NULL, 561.87, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2036, '2015-04-26 00:00:00Z', 'National Grid', 'Electic bill', -115.81, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2037, '2015-04-26 00:00:00Z', 'Orange County', 'Water bill', -125.04, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2038, '2015-04-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2039, '2015-04-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2040, '2015-04-26 00:00:00Z', 'BofA', 'ATM charges', -12.31, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2041, '2015-04-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2042, '2015-04-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2043, '2015-04-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2044, '2015-04-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2045, '2015-04-26 00:00:00Z', 'FIA Card Services', 'Cashback', 149.37, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2046, '2015-04-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -253.41, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2047, '2015-04-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -253.88, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2048, '2015-05-01 00:00:00Z', 'Stop&Shop', NULL, -97, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2049, '2015-05-04 00:00:00Z', 'Whole Foods', NULL, -91.3, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2050, '2015-05-06 00:00:00Z', 'Whole Foods', NULL, -119.1, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2051, '2015-05-07 00:00:00Z', 'Chevron', 'Gas', -23.23, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2052, '2015-05-02 00:00:00Z', 'Best Cleaners', 'Laundry', -15.42, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2053, '2015-05-01 00:00:00Z', 'Misc. Expenses', NULL, -8.46, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2054, '2015-05-03 00:00:00Z', 'Misc. Expenses', NULL, -14.74, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2055, '2015-05-05 00:00:00Z', 'Misc. Expenses', NULL, -8, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2056, '2015-05-07 00:00:00Z', 'Misc. Expenses', NULL, -10.78, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2057, '2015-05-08 00:00:00Z', 'Stop&Shop', NULL, -60.69, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2058, '2015-05-11 00:00:00Z', 'Whole Foods', NULL, -84.64, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2059, '2015-05-13 00:00:00Z', 'Whole Foods', NULL, -102.36, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2060, '2015-05-14 00:00:00Z', 'Chevron', 'Gas', -24.75, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2061, '2015-05-09 00:00:00Z', 'Best Cleaners', 'Laundry', -22.38, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2062, '2015-05-08 00:00:00Z', 'Misc. Expenses', NULL, -8.58, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2063, '2015-05-10 00:00:00Z', 'Misc. Expenses', NULL, -10.7, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2064, '2015-05-12 00:00:00Z', 'Misc. Expenses', NULL, -6.83, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2065, '2015-05-14 00:00:00Z', 'Misc. Expenses', NULL, -8.29, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2066, '2015-05-15 00:00:00Z', 'Stop&Shop', NULL, -148.33, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2067, '2015-05-18 00:00:00Z', 'Whole Foods', NULL, -141.44, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2068, '2015-05-20 00:00:00Z', 'Whole Foods', NULL, -133.44, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2069, '2015-05-21 00:00:00Z', 'Chevron', 'Gas', -24.53, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2070, '2015-05-16 00:00:00Z', 'Best Cleaners', 'Laundry', -22.31, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2071, '2015-05-15 00:00:00Z', 'Misc. Expenses', NULL, -9.36, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2072, '2015-05-17 00:00:00Z', 'Misc. Expenses', NULL, -5.4, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2073, '2015-05-19 00:00:00Z', 'Misc. Expenses', NULL, -5.64, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2074, '2015-05-21 00:00:00Z', 'Misc. Expenses', NULL, -7.67, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2075, '2015-05-22 00:00:00Z', 'Stop&Shop', NULL, -85.13, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2076, '2015-05-25 00:00:00Z', 'Whole Foods', NULL, -147.69, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2077, '2015-05-27 00:00:00Z', 'Whole Foods', NULL, -145.4, 7, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2078, '2015-05-28 00:00:00Z', 'Chevron', 'Gas', -32.14, 5, 1);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2079, '2015-05-23 00:00:00Z', 'Best Cleaners', 'Laundry', -18.97, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2080, '2015-05-22 00:00:00Z', 'Misc. Expenses', NULL, -6.9, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2081, '2015-05-24 00:00:00Z', 'Misc. Expenses', NULL, -11.4, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2082, '2015-05-26 00:00:00Z', 'Misc. Expenses', NULL, -12.69, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2083, '2015-05-28 00:00:00Z', 'Misc. Expenses', NULL, -6.1, 1, 23);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2084, '2015-05-11 00:00:00Z', 'Amazon', NULL, -57.75, 6, 9);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2085, '2015-05-21 00:00:00Z', 'Amazon', 'Software', -80.19, 6, 19);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2086, '2015-05-26 00:00:00Z', 'Amazon', 'AWS', -99.4, 6, 3);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2087, '2015-05-21 00:00:00Z', 'Transfer to AmEx', NULL, -1155.73, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2088, '2015-05-21 00:00:00Z', 'Transfer to Amazon', NULL, -191.38, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2089, '2015-05-21 00:00:00Z', 'Transfer to FIA', NULL, -636.2, 2, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2090, '2015-05-21 00:00:00Z', 'Transfer from Checking', NULL, 1155.73, 7, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2091, '2015-05-21 00:00:00Z', 'Transfer from Checking', NULL, 191.38, 6, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2092, '2015-05-21 00:00:00Z', 'Transfer from Checking', NULL, 636.20, 5, 21);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2093, '2015-05-26 00:00:00Z', 'National Grid', 'Electic bill', -151.08, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2094, '2015-05-26 00:00:00Z', 'Orange County', 'Water bill', -112.09, 2, 2);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2095, '2015-05-26 00:00:00Z', 'Stanford University', 'Tuition', -400, 2, 5);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2096, '2015-05-21 00:00:00Z', 'Netflix', NULL, -9.95, 2, 6);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2097, '2015-05-26 00:00:00Z', 'BofA', 'ATM charges', -12.91, 2, 7);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2098, '2015-05-26 00:00:00Z', 'Equinox', 'Gym membership', -130, 5, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2099, '2015-05-26 00:00:00Z', 'Scotts LawnService', NULL, -99.95, 5, 12);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2100, '2015-05-11 00:00:00Z', 'Supercuts', 'Haircut', -16, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2101, '2015-05-21 00:00:00Z', 'Newbury Day Spa', NULL, -60, 5, 17);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2102, '2015-05-26 00:00:00Z', 'FIA Card Services', 'Cashback', 174.29, 5, 24);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2103, '2015-05-06 00:00:00Z', 'Pentucket Medical', 'Medical bill', -114.35, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2104, '2015-05-16 00:00:00Z', 'Pentucket Medical', 'Medical bill', -182.3, 4, 11);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2105, '2013-01-04 00:00:00Z', 'Liquidate', NULL, 555.01, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2106, '2013-01-04 00:00:00Z', 'Investment', NULL, -1490.17, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2107, '2013-01-04 00:00:00Z', 'Investment', NULL, -951.47, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2108, '2013-01-04 00:00:00Z', 'Investment', NULL, -526.2, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2109, '2013-01-23 00:00:00Z', 'Dividends', NULL, 49.50, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2110, '2013-01-23 00:00:00Z', 'Dividends', NULL, 96.00, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2111, '2013-01-23 00:00:00Z', 'Dividends', NULL, 19.15, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2112, '2013-01-23 00:00:00Z', 'Interest', NULL, 16.35, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2113, '2013-01-23 00:00:00Z', 'E*Trade', 'Management fees', -74.04, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2114, '2013-02-04 00:00:00Z', 'Liquidate', NULL, 721.36, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2115, '2013-02-04 00:00:00Z', 'Investment', NULL, -1391.58, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2116, '2013-02-04 00:00:00Z', 'Investment', NULL, -992.22, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2117, '2013-02-04 00:00:00Z', 'Investment', NULL, -510, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2118, '2013-02-23 00:00:00Z', 'Dividends', NULL, 69.85, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2119, '2013-02-23 00:00:00Z', 'Dividends', NULL, 90.53, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2120, '2013-02-23 00:00:00Z', 'Dividends', NULL, 39.06, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2121, '2013-02-23 00:00:00Z', 'Interest', NULL, 14.29, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2122, '2013-02-23 00:00:00Z', 'E*Trade', 'Management fees', -95.93, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2123, '2013-03-04 00:00:00Z', 'Liquidate', NULL, 969.82, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2124, '2013-03-04 00:00:00Z', 'Investment', NULL, -2068.36, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2125, '2013-03-04 00:00:00Z', 'Investment', NULL, -986.53, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2126, '2013-03-04 00:00:00Z', 'Investment', NULL, -542.2, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2127, '2013-03-23 00:00:00Z', 'Dividends', NULL, 40.93, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2128, '2013-03-23 00:00:00Z', 'Dividends', NULL, 42.28, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2129, '2013-03-23 00:00:00Z', 'Dividends', NULL, 21.54, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2130, '2013-03-23 00:00:00Z', 'Interest', NULL, 36.62, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2131, '2013-03-23 00:00:00Z', 'E*Trade', 'Management fees', -77.63, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2132, '2013-04-04 00:00:00Z', 'Liquidate', NULL, 600.10, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2133, '2013-04-04 00:00:00Z', 'Investment', NULL, -1484.56, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2134, '2013-04-04 00:00:00Z', 'Investment', NULL, -980.98, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2135, '2013-04-04 00:00:00Z', 'Investment', NULL, -476.72, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2136, '2013-04-23 00:00:00Z', 'Dividends', NULL, 51.25, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2137, '2013-04-23 00:00:00Z', 'Dividends', NULL, 34.53, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2138, '2013-04-23 00:00:00Z', 'Dividends', NULL, 22.88, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2139, '2013-04-23 00:00:00Z', 'Interest', NULL, 11.29, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2140, '2013-04-23 00:00:00Z', 'E*Trade', 'Management fees', -78.58, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2141, '2013-05-04 00:00:00Z', 'Liquidate', NULL, 660.10, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2142, '2013-05-04 00:00:00Z', 'Investment', NULL, -1810.01, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2143, '2013-05-04 00:00:00Z', 'Investment', NULL, -953.81, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2144, '2013-05-04 00:00:00Z', 'Investment', NULL, -503.73, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2145, '2013-05-23 00:00:00Z', 'Dividends', NULL, 69.57, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2146, '2013-05-23 00:00:00Z', 'Dividends', NULL, 30.31, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2147, '2013-05-23 00:00:00Z', 'Dividends', NULL, 33.42, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2148, '2013-05-23 00:00:00Z', 'Interest', NULL, 21.44, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2149, '2013-05-23 00:00:00Z', 'E*Trade', 'Management fees', -53.61, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2150, '2013-06-04 00:00:00Z', 'Liquidate', NULL, 585.65, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2151, '2013-06-04 00:00:00Z', 'Investment', NULL, -1704.04, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2152, '2013-06-04 00:00:00Z', 'Investment', NULL, -934.98, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2153, '2013-06-04 00:00:00Z', 'Investment', NULL, -523.27, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2154, '2013-06-23 00:00:00Z', 'Dividends', NULL, 90.60, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2155, '2013-06-23 00:00:00Z', 'Dividends', NULL, 34.90, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2156, '2013-06-23 00:00:00Z', 'Dividends', NULL, 36.55, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2157, '2013-06-23 00:00:00Z', 'Interest', NULL, 24.62, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2158, '2013-06-23 00:00:00Z', 'E*Trade', 'Management fees', -75.58, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2159, '2013-07-04 00:00:00Z', 'Liquidate', NULL, 922.24, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2160, '2013-07-04 00:00:00Z', 'Investment', NULL, -1616.26, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2161, '2013-07-04 00:00:00Z', 'Investment', NULL, -996.92, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2162, '2013-07-04 00:00:00Z', 'Investment', NULL, -522.22, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2163, '2013-07-23 00:00:00Z', 'Dividends', NULL, 23.15, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2164, '2013-07-23 00:00:00Z', 'Dividends', NULL, 89.59, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2165, '2013-07-23 00:00:00Z', 'Dividends', NULL, 34.59, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2166, '2013-07-23 00:00:00Z', 'Interest', NULL, 34.15, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2167, '2013-07-23 00:00:00Z', 'E*Trade', 'Management fees', -69.14, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2168, '2013-08-04 00:00:00Z', 'Liquidate', NULL, 945.14, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2169, '2013-08-04 00:00:00Z', 'Investment', NULL, -1397.05, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2170, '2013-08-04 00:00:00Z', 'Investment', NULL, -919.8, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2171, '2013-08-04 00:00:00Z', 'Investment', NULL, -468.59, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2172, '2013-08-23 00:00:00Z', 'Dividends', NULL, 61.91, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2173, '2013-08-23 00:00:00Z', 'Dividends', NULL, 65.98, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2174, '2013-08-23 00:00:00Z', 'Dividends', NULL, 49.55, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2175, '2013-08-23 00:00:00Z', 'Interest', NULL, 45.72, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2176, '2013-08-23 00:00:00Z', 'E*Trade', 'Management fees', -50.94, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2177, '2013-09-04 00:00:00Z', 'Liquidate', NULL, 648.08, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2178, '2013-09-04 00:00:00Z', 'Investment', NULL, -1043.76, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2179, '2013-09-04 00:00:00Z', 'Investment', NULL, -949.67, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2180, '2013-09-04 00:00:00Z', 'Investment', NULL, -474.13, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2181, '2013-09-23 00:00:00Z', 'Dividends', NULL, 28.83, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2182, '2013-09-23 00:00:00Z', 'Dividends', NULL, 84.02, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2183, '2013-09-23 00:00:00Z', 'Dividends', NULL, 24.45, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2184, '2013-09-23 00:00:00Z', 'Interest', NULL, 43.96, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2185, '2013-09-23 00:00:00Z', 'E*Trade', 'Management fees', -52.01, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2186, '2013-10-04 00:00:00Z', 'Liquidate', NULL, 550.58, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2187, '2013-10-04 00:00:00Z', 'Investment', NULL, -1642.52, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2188, '2013-10-04 00:00:00Z', 'Investment', NULL, -985.17, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2189, '2013-10-04 00:00:00Z', 'Investment', NULL, -535.31, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2190, '2013-10-23 00:00:00Z', 'Dividends', NULL, 30.80, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2191, '2013-10-23 00:00:00Z', 'Dividends', NULL, 84.60, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2192, '2013-10-23 00:00:00Z', 'Dividends', NULL, 19.11, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2193, '2013-10-23 00:00:00Z', 'Interest', NULL, 15.51, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2194, '2013-10-23 00:00:00Z', 'E*Trade', 'Management fees', -78.33, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2195, '2013-11-04 00:00:00Z', 'Liquidate', NULL, 784.17, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2196, '2013-11-04 00:00:00Z', 'Investment', NULL, -1364.96, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2197, '2013-11-04 00:00:00Z', 'Investment', NULL, -937.75, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2198, '2013-11-04 00:00:00Z', 'Investment', NULL, -509.56, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2199, '2013-11-23 00:00:00Z', 'Dividends', NULL, 68.98, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2200, '2013-11-23 00:00:00Z', 'Dividends', NULL, 46.70, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2201, '2013-11-23 00:00:00Z', 'Dividends', NULL, 41.94, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2202, '2013-11-23 00:00:00Z', 'Interest', NULL, 43.01, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2203, '2013-11-23 00:00:00Z', 'E*Trade', 'Management fees', -51.67, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2204, '2013-12-04 00:00:00Z', 'Liquidate', NULL, 881.58, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2205, '2013-12-04 00:00:00Z', 'Investment', NULL, -1637.76, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2206, '2013-12-04 00:00:00Z', 'Investment', NULL, -962.27, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2207, '2013-12-04 00:00:00Z', 'Investment', NULL, -508.36, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2208, '2013-12-23 00:00:00Z', 'Dividends', NULL, 75.09, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2209, '2013-12-23 00:00:00Z', 'Dividends', NULL, 70.77, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2210, '2013-12-23 00:00:00Z', 'Dividends', NULL, 11.83, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2211, '2013-12-23 00:00:00Z', 'Interest', NULL, 39.69, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2212, '2013-12-23 00:00:00Z', 'E*Trade', 'Management fees', -54.2, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2213, '2014-01-04 00:00:00Z', 'Liquidate', NULL, 519.25, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2214, '2014-01-04 00:00:00Z', 'Investment', NULL, -2303.04, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2215, '2014-01-04 00:00:00Z', 'Investment', NULL, -935.42, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2216, '2014-01-04 00:00:00Z', 'Investment', NULL, -508.77, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2217, '2014-01-23 00:00:00Z', 'Dividends', NULL, 61.88, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2218, '2014-01-23 00:00:00Z', 'Dividends', NULL, 23.24, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2219, '2014-01-23 00:00:00Z', 'Dividends', NULL, 29.72, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2220, '2014-01-23 00:00:00Z', 'Interest', NULL, 29.61, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2221, '2014-01-23 00:00:00Z', 'E*Trade', 'Management fees', -71.41, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2222, '2014-02-04 00:00:00Z', 'Liquidate', NULL, 563.18, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2223, '2014-02-04 00:00:00Z', 'Investment', NULL, -2275.91, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2224, '2014-02-04 00:00:00Z', 'Investment', NULL, -990.27, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2225, '2014-02-04 00:00:00Z', 'Investment', NULL, -495.16, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2226, '2014-02-23 00:00:00Z', 'Dividends', NULL, 44.46, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2227, '2014-02-23 00:00:00Z', 'Dividends', NULL, 99.72, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2228, '2014-02-23 00:00:00Z', 'Dividends', NULL, 21.02, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2229, '2014-02-23 00:00:00Z', 'Interest', NULL, 47.51, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2230, '2014-02-23 00:00:00Z', 'E*Trade', 'Management fees', -81.58, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2231, '2014-03-04 00:00:00Z', 'Liquidate', NULL, 907.15, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2232, '2014-03-04 00:00:00Z', 'Investment', NULL, -1559.64, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2233, '2014-03-04 00:00:00Z', 'Investment', NULL, -987.17, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2234, '2014-03-04 00:00:00Z', 'Investment', NULL, -536.37, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2235, '2014-03-23 00:00:00Z', 'Dividends', NULL, 88.27, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2236, '2014-03-23 00:00:00Z', 'Dividends', NULL, 52.95, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2237, '2014-03-23 00:00:00Z', 'Dividends', NULL, 48.23, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2238, '2014-03-23 00:00:00Z', 'Interest', NULL, 23.33, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2239, '2014-03-23 00:00:00Z', 'E*Trade', 'Management fees', -57.84, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2240, '2014-04-04 00:00:00Z', 'Liquidate', NULL, 504.03, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2241, '2014-04-04 00:00:00Z', 'Investment', NULL, -1743.93, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2242, '2014-04-04 00:00:00Z', 'Investment', NULL, -915.48, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2243, '2014-04-04 00:00:00Z', 'Investment', NULL, -509.72, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2244, '2014-04-23 00:00:00Z', 'Dividends', NULL, 34.02, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2245, '2014-04-23 00:00:00Z', 'Dividends', NULL, 80.91, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2246, '2014-04-23 00:00:00Z', 'Dividends', NULL, 12.06, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2247, '2014-04-23 00:00:00Z', 'Interest', NULL, 15.10, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2248, '2014-04-23 00:00:00Z', 'E*Trade', 'Management fees', -89.84, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2249, '2014-05-04 00:00:00Z', 'Liquidate', NULL, 641.08, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2250, '2014-05-04 00:00:00Z', 'Investment', NULL, -1114.99, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2251, '2014-05-04 00:00:00Z', 'Investment', NULL, -975.03, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2252, '2014-05-04 00:00:00Z', 'Investment', NULL, -474.94, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2253, '2014-05-23 00:00:00Z', 'Dividends', NULL, 87.40, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2254, '2014-05-23 00:00:00Z', 'Dividends', NULL, 81.30, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2255, '2014-05-23 00:00:00Z', 'Dividends', NULL, 35.95, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2256, '2014-05-23 00:00:00Z', 'Interest', NULL, 20.33, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2257, '2014-05-23 00:00:00Z', 'E*Trade', 'Management fees', -87.29, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2258, '2014-06-04 00:00:00Z', 'Liquidate', NULL, 974.20, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2259, '2014-06-04 00:00:00Z', 'Investment', NULL, -1190.77, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2260, '2014-06-04 00:00:00Z', 'Investment', NULL, -921.57, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2261, '2014-06-04 00:00:00Z', 'Investment', NULL, -515.3, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2262, '2014-06-23 00:00:00Z', 'Dividends', NULL, 99.24, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2263, '2014-06-23 00:00:00Z', 'Dividends', NULL, 46.46, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2264, '2014-06-23 00:00:00Z', 'Dividends', NULL, 21.14, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2265, '2014-06-23 00:00:00Z', 'Interest', NULL, 45.58, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2266, '2014-06-23 00:00:00Z', 'E*Trade', 'Management fees', -67, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2267, '2014-07-04 00:00:00Z', 'Liquidate', NULL, 840.71, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2268, '2014-07-04 00:00:00Z', 'Investment', NULL, -2338.3, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2269, '2014-07-04 00:00:00Z', 'Investment', NULL, -992.22, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2270, '2014-07-04 00:00:00Z', 'Investment', NULL, -467.27, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2271, '2014-07-23 00:00:00Z', 'Dividends', NULL, 76.53, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2272, '2014-07-23 00:00:00Z', 'Dividends', NULL, 27.19, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2273, '2014-07-23 00:00:00Z', 'Dividends', NULL, 25.99, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2274, '2014-07-23 00:00:00Z', 'Interest', NULL, 33.50, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2275, '2014-07-23 00:00:00Z', 'E*Trade', 'Management fees', -58.45, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2276, '2014-08-04 00:00:00Z', 'Liquidate', NULL, 802.22, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2277, '2014-08-04 00:00:00Z', 'Investment', NULL, -2139.89, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2278, '2014-08-04 00:00:00Z', 'Investment', NULL, -984.64, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2279, '2014-08-04 00:00:00Z', 'Investment', NULL, -462.4, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2280, '2014-08-23 00:00:00Z', 'Dividends', NULL, 48.43, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2281, '2014-08-23 00:00:00Z', 'Dividends', NULL, 67.37, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2282, '2014-08-23 00:00:00Z', 'Dividends', NULL, 30.89, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2283, '2014-08-23 00:00:00Z', 'Interest', NULL, 46.94, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2284, '2014-08-23 00:00:00Z', 'E*Trade', 'Management fees', -65.16, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2285, '2014-09-04 00:00:00Z', 'Liquidate', NULL, 677.71, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2286, '2014-09-04 00:00:00Z', 'Investment', NULL, -1963.15, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2287, '2014-09-04 00:00:00Z', 'Investment', NULL, -946.13, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2288, '2014-09-04 00:00:00Z', 'Investment', NULL, -501.94, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2289, '2014-09-23 00:00:00Z', 'Dividends', NULL, 96.49, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2290, '2014-09-23 00:00:00Z', 'Dividends', NULL, 56.15, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2291, '2014-09-23 00:00:00Z', 'Dividends', NULL, 46.85, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2292, '2014-09-23 00:00:00Z', 'Interest', NULL, 21.00, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2293, '2014-09-23 00:00:00Z', 'E*Trade', 'Management fees', -97.44, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2294, '2014-10-04 00:00:00Z', 'Liquidate', NULL, 645.45, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2295, '2014-10-04 00:00:00Z', 'Investment', NULL, -1909.5, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2296, '2014-10-04 00:00:00Z', 'Investment', NULL, -950.75, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2297, '2014-10-04 00:00:00Z', 'Investment', NULL, -494.43, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2298, '2014-10-23 00:00:00Z', 'Dividends', NULL, 84.19, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2299, '2014-10-23 00:00:00Z', 'Dividends', NULL, 98.21, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2300, '2014-10-23 00:00:00Z', 'Dividends', NULL, 16.41, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2301, '2014-10-23 00:00:00Z', 'Interest', NULL, 19.90, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2302, '2014-10-23 00:00:00Z', 'E*Trade', 'Management fees', -79.59, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2303, '2014-11-04 00:00:00Z', 'Liquidate', NULL, 830.48, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2304, '2014-11-04 00:00:00Z', 'Investment', NULL, -2171.14, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2305, '2014-11-04 00:00:00Z', 'Investment', NULL, -973.56, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2306, '2014-11-04 00:00:00Z', 'Investment', NULL, -522.44, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2307, '2014-11-23 00:00:00Z', 'Dividends', NULL, 37.28, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2308, '2014-11-23 00:00:00Z', 'Dividends', NULL, 33.02, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2309, '2014-11-23 00:00:00Z', 'Dividends', NULL, 41.45, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2310, '2014-11-23 00:00:00Z', 'Interest', NULL, 38.64, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2311, '2014-11-23 00:00:00Z', 'E*Trade', 'Management fees', -62.62, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2312, '2014-12-04 00:00:00Z', 'Liquidate', NULL, 929.85, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2313, '2014-12-04 00:00:00Z', 'Investment', NULL, -1838.8, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2314, '2014-12-04 00:00:00Z', 'Investment', NULL, -989.13, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2315, '2014-12-04 00:00:00Z', 'Investment', NULL, -531.01, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2316, '2014-12-23 00:00:00Z', 'Dividends', NULL, 75.94, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2317, '2014-12-23 00:00:00Z', 'Dividends', NULL, 71.52, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2318, '2014-12-23 00:00:00Z', 'Dividends', NULL, 35.73, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2319, '2014-12-23 00:00:00Z', 'Interest', NULL, 23.42, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2320, '2014-12-23 00:00:00Z', 'E*Trade', 'Management fees', -78.44, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2321, '2015-01-04 00:00:00Z', 'Liquidate', NULL, 794.58, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2322, '2015-01-04 00:00:00Z', 'Investment', NULL, -1839.44, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2323, '2015-01-04 00:00:00Z', 'Investment', NULL, -918.05, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2324, '2015-01-04 00:00:00Z', 'Investment', NULL, -521.19, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2325, '2015-01-23 00:00:00Z', 'Dividends', NULL, 42.91, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2326, '2015-01-23 00:00:00Z', 'Dividends', NULL, 33.75, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2327, '2015-01-23 00:00:00Z', 'Dividends', NULL, 25.16, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2328, '2015-01-23 00:00:00Z', 'Interest', NULL, 18.03, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2329, '2015-01-23 00:00:00Z', 'E*Trade', 'Management fees', -88.94, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2330, '2015-02-04 00:00:00Z', 'Liquidate', NULL, 784.60, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2331, '2015-02-04 00:00:00Z', 'Investment', NULL, -1920.43, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2332, '2015-02-04 00:00:00Z', 'Investment', NULL, -986.29, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2333, '2015-02-04 00:00:00Z', 'Investment', NULL, -513.12, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2334, '2015-02-23 00:00:00Z', 'Dividends', NULL, 22.77, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2335, '2015-02-23 00:00:00Z', 'Dividends', NULL, 37.92, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2336, '2015-02-23 00:00:00Z', 'Dividends', NULL, 17.58, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2337, '2015-02-23 00:00:00Z', 'Interest', NULL, 29.02, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2338, '2015-02-23 00:00:00Z', 'E*Trade', 'Management fees', -69.69, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2339, '2015-03-04 00:00:00Z', 'Liquidate', NULL, 931.24, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2340, '2015-03-04 00:00:00Z', 'Investment', NULL, -1307.68, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2341, '2015-03-04 00:00:00Z', 'Investment', NULL, -998.16, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2342, '2015-03-04 00:00:00Z', 'Investment', NULL, -498.8, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2343, '2015-03-23 00:00:00Z', 'Dividends', NULL, 62.54, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2344, '2015-03-23 00:00:00Z', 'Dividends', NULL, 70.07, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2345, '2015-03-23 00:00:00Z', 'Dividends', NULL, 34.34, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2346, '2015-03-23 00:00:00Z', 'Interest', NULL, 33.52, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2347, '2015-03-23 00:00:00Z', 'E*Trade', 'Management fees', -79.46, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2348, '2015-04-04 00:00:00Z', 'Liquidate', NULL, 874.99, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2349, '2015-04-04 00:00:00Z', 'Investment', NULL, -1448.56, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2350, '2015-04-04 00:00:00Z', 'Investment', NULL, -909.43, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2351, '2015-04-04 00:00:00Z', 'Investment', NULL, -487.84, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2352, '2015-04-23 00:00:00Z', 'Dividends', NULL, 55.76, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2353, '2015-04-23 00:00:00Z', 'Dividends', NULL, 74.07, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2354, '2015-04-23 00:00:00Z', 'Dividends', NULL, 44.90, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2355, '2015-04-23 00:00:00Z', 'Interest', NULL, 37.21, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2356, '2015-04-23 00:00:00Z', 'E*Trade', 'Management fees', -91.43, 8, 8);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2357, '2015-05-04 00:00:00Z', 'Liquidate', NULL, 648.01, 8, 15);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2358, '2015-05-04 00:00:00Z', 'Investment', NULL, -2118.36, 8, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2359, '2015-05-04 00:00:00Z', 'Investment', NULL, -942.8, 9, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2360, '2015-05-04 00:00:00Z', 'Investment', NULL, -460.64, 10, 14);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2361, '2015-05-23 00:00:00Z', 'Dividends', NULL, 39.42, 8, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2362, '2015-05-23 00:00:00Z', 'Dividends', NULL, 34.95, 9, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2363, '2015-05-23 00:00:00Z', 'Dividends', NULL, 23.42, 10, 4);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2364, '2015-05-23 00:00:00Z', 'Interest', NULL, 42.57, 3, 13);

INSERT INTO transactions
(id, txn_date, payee, memo, amount, account_id, category_id)
VALUES (2365, '2015-05-23 00:00:00Z', 'E*Trade', 'Management fees', -58.76, 8, 8);


SELECT setval('transactions_id_seq', (SELECT MAX(id) FROM transactions));

