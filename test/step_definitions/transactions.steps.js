'use strict';

module.exports = function() {

    this.World = require('./support/world').World;

    this.Given(/^a transaction with the following properties$/, function(table, callback) {
        this.createTransaction(table.hashes()[0], callback);
    });

    this.When(/^I create a transaction with the following properties$/, function(table, callback) {
        this.createTransaction(table.hashes()[0], callback);
    });

    this.Given(/^the following transactions$/, function (table, callback) {
        this.createTransactions(table.hashes(), callback);
    });

    this.When(/^I change the transaction amount to (\-?\d*\.?\d*)$/, function(amount, callback) {
        this.changeTransactionAmount(amount, callback);
    });

    this.When(/^I ask for the transaction$/, function(callback) {
        this.getTransaction(callback);
    });

    this.When(/^I delete the transaction$/, function(callback) {
        this.deleteTransaction(callback);
    });

    this.Then(/^I should get the following transaction$/, function(table, callback) {
        this.assertTransaction(table.hashes()[0]);
        callback();
    });

    this.Then(/^the transaction should not exist$/, function(callback) {
        this.assertTransactionDoesNotExist(callback);
    });
};