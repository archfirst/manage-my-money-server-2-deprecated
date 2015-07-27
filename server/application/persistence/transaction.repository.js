'use strict';

module.exports = {
    createTransaction: createTransaction,
    updateTransaction: updateTransaction,
    getTransaction: getTransaction,
    getTransactions: getTransactions,
    getTransactionsByCategory: getTransactionsByCategory,
    deleteTransaction: deleteTransaction
};

var knex = require('./db').knex;
var joinjs = require('join-js');
var errors = require('./../../infrastructure/errors');
var resultMaps = require('./resultmaps');
var domain = require('../../domain');
var Transaction = domain.Transaction;

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

    var transaction = new Transaction(transactionData);

    return knex('transactions')
        .returning('id')
        .insert(transaction)
        .then(function(ids) {
            transaction.id = ids[0];
            return transaction;
        });
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

    var transaction = new Transaction(transactionData);

    return knex('transactions')
        .where('id', transaction.id)
        .update(transaction)
        .then(function() {
            return transaction;
        });
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
    return knex
        .select(
            't.id as transaction_id',
            't.txn_date as transaction_txn_date',
            't.payee as transaction_payee',
            't.memo as transaction_memo',
            't.amount as transaction_amount',
            'a.id as account_id',
            'a.name as account_name',
            'c.id as category_id',
            'c.name as category_name')
        .from('transactions as t')
        .leftOuterJoin('accounts as a', 't.account_id', 'a.id')
        .leftOuterJoin('categories as c', 't.category_id', 'c.id')
        .where('t.id', id)

        .then(function(resultSet) {
            return joinjs.mapOne(resultSet, resultMaps, 'transactionMap', 'transaction_');
        })
        .catch(joinjs.NotFoundError, function(e) {
            throw new errors.NotFoundError(e.message);
        });
}

/**
 * Gets all transactions.
 * @param {number} [accountId] returns transactions only for the specified account
 * @return {Promise} A promise that returns an array of all transactions on fulfillment.
 * Format is the same as getTransaction(), but now as an array of transactions.
 */
function getTransactions(accountId) {

    var filterOptions = {};
    if (accountId) {
        filterOptions['t.account_id'] = accountId;
    }

    return knex
        .select(
        't.id as transaction_id',
        't.txn_date as transaction_txn_date',
        't.payee as transaction_payee',
        't.memo as transaction_memo',
        't.amount as transaction_amount',
        'a.id as account_id',
        'a.name as account_name',
        'c.id as category_id',
        'c.name as category_name')
        .from('transactions as t')
        .leftOuterJoin('accounts as a', 't.account_id', 'a.id')
        .leftOuterJoin('categories as c', 't.category_id', 'c.id')
        .where(filterOptions)

        .then(function(resultSet) {
            return joinjs.map(resultSet, resultMaps, 'transactionMap', 'transaction_');
        });
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

    // Start a query builder
    var qb = knex
        .select(
            'c.id as cat_id',
            'c.name as cat_name',
            knex.raw('sum(t.amount) as amount'))
        .from('transactions as t')
        .leftOuterJoin('categories as c', 't.category_id', 'c.id');

    // Add optional start and end dates
    if (startDate && endDate) {
        qb = qb.whereBetween('t.txn_date', [startDate, endDate]);
    }

    // Finally add the groupBy clause
    qb = qb.groupBy('c.id');

    return qb;
}

/**
 * Deletes a transaction.
 * @param {integer} id
 * @return {Promise} A promise that gets fulfilled when the transaction is deleted.
 */
function deleteTransaction(id) {
    return knex('transactions')
        .where('id', id)
        .delete();
}
