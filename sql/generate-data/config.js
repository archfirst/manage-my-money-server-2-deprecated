'use strict';

var SimpleDate = require('./simple-date');

var begDate = new SimpleDate(2013, 1,  1);
var endDate = new SimpleDate(2015, 5, 31);

var openingBalances = [
    { account_id:  1, amount:   100.00 },
    { account_id:  2, amount:  1000.00 },
    { account_id:  3, amount:  5000.00 },
    { account_id:  4, amount:  3000.00 },
    { account_id:  5, amount: -3600.00 },
    { account_id:  6, amount:  -200.00 },
    { account_id:  7, amount:  -800.00 },
    { account_id:  8, amount: 50000.00 },
    { account_id:  9, amount: 70000.00 },
    { account_id: 10, amount: 10000.00 }
];

var config = {
    begDate: begDate,
    endDate: endDate,
    openingBalances: openingBalances
};

module.exports = config;
