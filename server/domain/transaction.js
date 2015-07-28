'use strict';

/**
 * An transaction.
 *   {int}     id
 *   {Date}    txn_date - date of the transaction
 *   {String}  payee - person or entity with whom I transacted
 *   {String}  memo
 *   {float}   amount - negative is paid, positive is received
 *   {int}     account_id - account in which transaction occured
 *   {int}     category_id - category assigned to the transaction
 *
 * Example:
 *   {
 *       id: [number],
 *       txn_date: new Date('2015-02-01T00:00Z'),
 *       payee: 'Chevron Gas Station',
 *       memo: 'Gas',
 *       amount: -30.00,
 *       account_id: [number],
 *       category_id: [number]
 *   }
 */

var _ = require('lodash');

var Transaction = function(transactionData) {
    if (transactionData) {
        _.extend(this, transactionData);
    }
};

module.exports = Transaction;
