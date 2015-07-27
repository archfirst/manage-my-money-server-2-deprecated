'use strict';

var _ = require('lodash');

var Transaction = function(transactionData) {
    if (transactionData) {
        _.extend(this, transactionData);
    }
};

module.exports = Transaction;
