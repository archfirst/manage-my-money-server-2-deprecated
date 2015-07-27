/* jshint expr: true */
'use strict';

var _ = require('lodash');
var Promise = require('bluebird');
var expect = require('./chai-helpers').expect;
var application = require(process.cwd() + '/server/application');
var errors = require(process.cwd() + '/server/infrastructure').errors;
var accountService = application.accountService;
var categoryService = application.categoryService;
var transactionService = application.transactionService;


// ----- Utilities -----
// Returns transaction data for transmission
function toTransactionData(transaction, accountId, categoryId) {
    return {
        txn_date: new Date(transaction.date),
        payee: transaction.payee,
        memo: transaction.memo,
        amount: parseFloat(transaction.amount),
        account_id: accountId,
        category_id: categoryId
    };
}

var World = function World(callback) {
    // Cached objects
    this.account = undefined;
    this.accounts = undefined;

    this.category = undefined;
    this.categories = undefined;

    this.transaction = undefined;
    this.transactions = undefined;

    this.transactionsByCategory = undefined;

    // ----- Accounts -----
    this.createAccount = function(name, callback) {
        var self = this;

        accountService.createAccount({name: name})
            .then(function(account) {
                self.account = account;
                callback();
            });
    };

    this.createAccounts = function(accounts, callback) {
        var self = this;

        var tasks = [];
        _.each(accounts, function(account) {
            tasks.push(accountService.createAccount({name: account.name}));
        });

        Promise.all(tasks)
            .then(function(accounts) {
                self.accounts = accounts;
                callback();
            });
    };

    this.changeAccountName = function(name, callback) {
        var self = this;

        self.account.name = name;

        accountService.updateAccount(self.account)
            .then(function(account) {
                self.account = account;
                callback();
            });
    };

    this.getAccount = function(callback) {
        var self = this;

        accountService.getAccount(self.account.id)
            .then(function(account) {
                self.account = account;
                callback();
            });
    };

    this.deleteAccount = function(callback) {

        accountService.deleteAccount(this.account.id)
            .then(function() {
                callback();
            });
    };

    this.assertAccountName = function(expectedName) {
        expect(this.account.name).to.equal(expectedName);
    };

    this.assertAccountDoesNotExist = function(callback) {
        accountService.getAccount(this.account.id)
            .then(function(account) {
                callback.fail(new Error('Account exists: ' + account.get('name')));
            })
            .catch(errors.NotFoundError, function() {
                // NotFoundError is expected
                callback();
            });
    };

    // ----- Category -----
    this.createCategory = function(name, callback) {
        var self = this;

        categoryService.createCategory({name: name})
            .then(function(category) {
                self.category = category;
                callback();
            });
    };

    this.createCategories = function(categories, callback) {
        var self = this;

        var tasks = [];
        _.each(categories, function(category) {
            tasks.push(categoryService.createCategory({name: category.name}));
        });

        Promise.all(tasks)
            .then(function(categories) {
                self.categories = categories;
                callback();
            });
    };

    this.changeCategoryName = function(name, callback) {
        var self = this;

        self.category.name = name;

        categoryService.updateCategory(self.category)
            .then(function(category) {
                self.category = category;
                callback();
            });
    };

    this.getCategory = function(callback) {
        var self = this;

        categoryService.getCategory(self.category.id)
            .then(function(category) {
                self.category = category;
                callback();
            });
    };

    this.deleteCategory = function(callback) {

        categoryService.deleteCategory(this.category.id)
            .then(function() {
                callback();
            });
    };

    this.assertCategoryName = function(expectedName) {
        expect(this.category.name).to.equal(expectedName);
    };

    this.assertCategoryDoesNotExist = function(callback) {
        categoryService.getCategory(this.category.id)
            .then(function(category) {
                callback.fail(new Error('Category exists: ' + category.get('name')));
            })
            .catch(errors.NotFoundError, function() {
                // NotFoundError is expected
                callback();
            });
    };

    // ----- Transaction -----
    this.createTransaction = function(transaction, callback) {

        var self = this;
        var transactionData = toTransactionData(transaction, self.account.id, self.category.id);

        return transactionService.createTransaction(transactionData)
            .then(function(transaction) {
                self.transaction = transaction;
                callback();
            });
    };

    this.createTransactions = function(transactions, callback) {
        var self = this;

        var tasks = [];
        _.each(transactions, function(transaction) {

            var accountId = _.findWhere( self.accounts, {name: transaction.account} ).id;
            var categoryId = _.findWhere( self.categories, {name: transaction.category} ).id;
            var transactionData = toTransactionData(transaction, accountId, categoryId);

            tasks.push(transactionService.createTransaction(transactionData));
        });

        Promise.all(tasks)
            .then(function(transactions) {
                self.transactions = transactions;
                callback();
            });
    };

    this.changeTransactionAmount = function(amount, callback) {
        var self = this;

        self.transaction.amount = parseFloat(amount);

        transactionService.updateTransaction(self.transaction)
            .then(function(transaction) {
                self.transaction = transaction;
                callback();
            });
    };

    this.getTransaction = function(callback) {
        var self = this;

        transactionService.getTransaction(self.transaction.id)
            .then(function(transaction) {
                self.transaction = transaction;
                callback();
            });
    };

    this.getTransactionsByCategory = function(startDate, endDate, callback) {
        var self = this;

        transactionService.getTransactionsByCategory(new Date(startDate), new Date(endDate))
            .then(function(transactionsByCategory) {
                self.transactionsByCategory = transactionsByCategory;
                callback();
            });
    };

    this.deleteTransaction = function(callback) {

        transactionService.deleteTransaction(this.transaction.id)
            .then(function() {
                callback();
            });
    };

    this.assertTransaction = function(expectedTransaction) {
        expect(this.transaction.txn_date).to.equalDate(new Date(expectedTransaction.date));
        expect(this.transaction.payee).to.equal(expectedTransaction.payee);
        expect(this.transaction.memo).to.equal(expectedTransaction.memo);
        expect(this.transaction.amount).to.almost.equal(parseFloat(expectedTransaction.amount), 2);
        expect(this.transaction.payee).to.equal(expectedTransaction.payee);
        expect(this.transaction.account.name).to.equal(expectedTransaction.account);
        expect(this.transaction.category.name).to.equal(expectedTransaction.category);
    };

    this.assertTransactionDoesNotExist = function(callback) {
        transactionService.getTransaction(this.transaction.id)
            .then(function(transaction) {
                callback.fail(new Error('Transaction exists: ' + transaction.id));
            })
            .catch(errors.NotFoundError, function() {
                // NotFoundError is expected
                callback();
            });
    };

    this.assertTransactionsByCategory = function(expectedItems) {
        var self = this;

        _.each(expectedItems, function(expectedItem) {
            var actualItem =  _.findWhere( self.transactionsByCategory, {cat_name: expectedItem.category} );
            expect(actualItem.amount).to.almost.equal(parseFloat(expectedItem.amount), 2);
        });
    };

    callback();
};

module.exports = {
    World: World
};
