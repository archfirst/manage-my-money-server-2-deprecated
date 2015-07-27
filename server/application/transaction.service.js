'use strict';

module.exports = {
    createTransaction: createTransaction,
    updateTransaction: updateTransaction,
    getTransaction: getTransaction,
    getTransactions: getTransactions,
    getTransactionsByCategory: getTransactionsByCategory,
    deleteTransaction: deleteTransaction
};

var persistence = require('./persistence');
var TransactionRepository = persistence.transactionRepository;

/**
 * Creates a new transaction and inserts it in to the database.
 * @param {Object} transactionData - Full transaction data, excluding the id. For example:
 * {
 *     txn_date: new Date('2015-02-01T00:00Z'),
 *     payee: 'Chevron Gas Station',
 *     memo: 'Gas',
 *     amount: -30.00,
 *     account_id: 3,
 *     category_id: 1
 * }
 * @return {Promise} A promise that returns a full copy of the inserted transaction (including the id) on fulfillment.
 */
function createTransaction(transactionData) {
    return TransactionRepository.createTransaction(transactionData);
}

/**
 * Updates an existing transaction.
 * @param {Object} transactionData - Full transaction data, including the id. For example:
 * {
 *     id: 1,
 *     txn_date: new Date('2015-02-01T00:00Z'),
 *     payee: 'Chevron Gas Station',
 *     memo: 'Gas',
 *     amount: -30.00,
 *     account_id: 3,
 *     category_id: 1
 * }
 * @return {Promise} A promise that returns a full copy of the updated transaction on fulfillment.
 */
function updateTransaction(transactionData) {
    return TransactionRepository.updateTransaction(transactionData);
}

/**
 * Gets an existing transaction along with its account and category.
 * @param {integer} id
 * @return {Promise} A promise that returns the desired transaction on fulfillment. For example:
 *  {
 *     id: 1,
 *     txn_date: '2013-01-01T00:00:00.000Z',
 *     payee: 'Chevron Gas Station',
 *     memo: 'Gas',
 *     amount: -30.00,
 *     account: {
 *         id: 3,
 *         name: "E*Trade Savings"
 *     },
 *     category: {
 *         id: 1,
 *         name: "Auto & Transport"
 *     }
 * }
 */
function getTransaction(id) {
    return TransactionRepository.getTransaction(id);
}

/**
 * Gets all transactions.
 * @param {number} [accountId] returns transactions only for the specified account
 * @return {Promise} A promise that returns an array of all transactions on fulfillment.
 * Format is the same as getTransaction(), but now as an array of transactions.
 */
function getTransactions(accountId) {
    return TransactionRepository.getTransactions(accountId);
}

/**
 * Gets transactions grouped by category. startDate and endDate can be specified to limit the range of
 * transactions aggregated (either both or neither should be specified).
 * @param {Date} [startDate] start date for filtering transactions
 * @param {Date} [endDate] end date for filtering transactions
 * @return {Promise} A promise that returns an array of aggregated transactions on fulfillment.
 * [
 *     { cat_id: 1, cat_name: 'Auto & Transport', amount: -1000.00 },
 *     { cat_id: 2, cat_name: 'Bills & Utilities', amount: -2000.00 },
 *     ...
 *     { cat_id: 8, cat_name: 'Salary', amount: 40000.00 },
 *     ...
 * ]
 */
function getTransactionsByCategory(startDate, endDate) {
    return TransactionRepository.getTransactionsByCategory(startDate, endDate);
}

/**
 * Deletes a transaction.
 * @param {integer} id
 * @return {Promise} A promise that gets fulfilled when the transaction is deleted.
 */
function deleteTransaction(id) {
    return TransactionRepository.deleteTransaction(id);
}
