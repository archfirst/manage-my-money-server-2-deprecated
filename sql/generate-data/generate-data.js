'use strict';

var mustache = require('mustache');
var _ = require('lodash');

var config = require('./config');
var accounts = require('./accounts');
var categories = require('./categories');


// ----- Utilities -----
function generateHeader(title) {
    console.log('-- -----------------------------------------------------------------------------');
    console.log('-- ' + title);
    console.log('-- -----------------------------------------------------------------------------');
}

function setSequenceValue(table) {
    console.log();
    console.log("SELECT setval('" + table + "_id_seq', (SELECT MAX(id) FROM " + table + "));");
    console.log();
}

function randomFloat(min, max) {
    return _.random(min, max, true).toFixed(2);
}

// ----- Categories -----
function generateCategories(categories) {

    // Prevent escaping of '&' etc. by using {{{unescaped_variable}}}
    var template =
        "INSERT INTO categories (id, name) VALUES ({{id}}, '{{{name}}}');";

    generateHeader('categories');

    _.each(categories, function(category) {
        console.log(mustache.render(template, category));
    });

    setSequenceValue('categories');
}


// ----- Accounts -----
function generateAccounts(accounts) {

    // Prevent escaping of '&' etc. by using {{{unescaped_variable}}}
    var template =
        "INSERT INTO accounts (id, name) VALUES ({{id}}, '{{{name}}}');";

    generateHeader('accounts');

    _.each(accounts, function(account) {
        console.log(mustache.render(template, account));
    });

    setSequenceValue('accounts');
}


// ----- Transactions -----
var nextTxnId = 1;

function generateTransaction(transaction) {

    transaction.id = nextTxnId++;
    transaction.txn_date = transaction.txn_simple_date.toString();

    var memo = transaction.memo;
    transaction.memo_str = memo ? ("'" + memo + "'") : "NULL";

    // Prevent escaping of '&' etc. by using {{{unescaped_variable}}}
    var template =
        "INSERT INTO transactions\n" +
        "(id, txn_date, payee, memo, amount, account_id, category_id)\n" +
        "VALUES ({{id}}, '{{txn_date}} 00:00:00Z', '{{{payee}}}', {{{memo_str}}}, {{amount}}, {{account_id}}, {{category_id}});\n";

    return mustache.render(template, transaction);
}

function generateOpeningBalances() {

    var transaction = {
        txn_simple_date: config.begDate,
        payee: 'Opening Balance',
        category_id: 16
    };

    _.each(config.openingBalances, function(openingBalance) {
        transaction.account_id = openingBalance.account_id;
        transaction.amount = openingBalance.amount;

        console.log(generateTransaction(transaction));
    });
}

function generatePaycheck(date) {
    var salary    = { txn_simple_date: date, payee: 'Hooli',                 amount:  8000.00, account_id:  3, category_id: 18 };
    var fedTax    = { txn_simple_date: date, payee: 'IRS',                   amount: -1200.00, account_id:  3, category_id: 20 };
    var stateTax  = { txn_simple_date: date, payee: 'State of California',   amount:  -800.00, account_id:  3, category_id: 20 };

    var xfer2HSA  = { txn_simple_date: date, payee: 'Transfer to HSA',       amount:  -500.00, account_id:  3, category_id: 21 };
    var xferFSvg1 = { txn_simple_date: date, payee: 'Transfer from Savings', amount:   500.00, account_id:  4, category_id: 21 };

    var xfer2401K = { txn_simple_date: date, payee: 'Transfer to 401K',      amount: -1000.00, account_id:  3, category_id: 21 };
    var xferFSvg2 = { txn_simple_date: date, payee: 'Transfer from Savings', amount:  1000.00, account_id:  9, category_id: 21 };

    var xfer2ETrd = { txn_simple_date: date, payee: 'Transfer to E*Trade',   amount:  -800.00, account_id:  3, category_id: 21 };
    var xferFSvg3 = { txn_simple_date: date, payee: 'Transfer from Savings', amount:   800.00, account_id:  8, category_id: 21 };

    var xfer2Bttr = { txn_simple_date: date, payee: 'Transfer to Betterment',amount:  -500.00, account_id:  3, category_id: 21 };
    var xferFSvg4 = { txn_simple_date: date, payee: 'Transfer from Savings', amount:   500.00, account_id: 10, category_id: 21 };

    var xfer2Chkg = { txn_simple_date: date, payee: 'Transfer to Checking',  amount: -2700.00, account_id:  3, category_id: 21 };
    var xferFSvg5 = { txn_simple_date: date, payee: 'Transfer from Savings', amount:  2700.00, account_id:  2, category_id: 21 };

    var xfer2Cash = { txn_simple_date: date, payee: 'Transfer to Cash',      amount:  -200.00, account_id:  3, category_id: 21 };
    var xferFSvg6 = { txn_simple_date: date, payee: 'Transfer from Savings', amount:   200.00, account_id:  1, category_id: 21 };

    console.log(generateTransaction(salary));
    console.log(generateTransaction(fedTax));
    console.log(generateTransaction(stateTax));

    console.log(generateTransaction(xfer2HSA));
    console.log(generateTransaction(xfer2401K));
    console.log(generateTransaction(xfer2ETrd));
    console.log(generateTransaction(xfer2Bttr));
    console.log(generateTransaction(xfer2Chkg));
    console.log(generateTransaction(xfer2Cash));

    console.log(generateTransaction(xferFSvg1));
    console.log(generateTransaction(xferFSvg2));
    console.log(generateTransaction(xferFSvg3));
    console.log(generateTransaction(xferFSvg4));
    console.log(generateTransaction(xferFSvg5));
    console.log(generateTransaction(xferFSvg6));
}

function generatePaychecks() {

    var date = config.begDate.clone();
    date.dd = 28;  // change pay day to 28th of the month

    for ( ; date.lte(config.endDate); date.addMonth() ) {
        generatePaycheck(date);
    }
}

function generateExpensesFor1Week(weekStartDate) {

    var day0 = weekStartDate.clone();
    var day1 = weekStartDate.clone().addDays(1);
    var day2 = weekStartDate.clone().addDays(2);
    var day3 = weekStartDate.clone().addDays(3);
    var day4 = weekStartDate.clone().addDays(4);
    var day5 = weekStartDate.clone().addDays(5);
    var day6 = weekStartDate.clone().addDays(6);

    // Buy groceries 3 times a week
    var groceries1 = { txn_simple_date: day0, payee: 'Stop&Shop',   amount: -(randomFloat(50, 150)), account_id: 7, category_id: 9 };
    var groceries2 = { txn_simple_date: day3, payee: 'Whole Foods', amount: -(randomFloat(50, 150)), account_id: 7, category_id: 9 };
    var groceries3 = { txn_simple_date: day5, payee: 'Whole Foods', amount: -(randomFloat(50, 150)), account_id: 7, category_id: 9 };
    console.log(generateTransaction(groceries1));
    console.log(generateTransaction(groceries2));
    console.log(generateTransaction(groceries3));

    // Fill gas once a week
    var gas = { txn_simple_date: day6, payee: 'Chevron', memo: 'Gas', amount: -(randomFloat(20, 50)), account_id: 5, category_id: 1 };
    console.log(generateTransaction(gas));

    // Visit the laundry once a week
    var laundry = { txn_simple_date: day1, payee: 'Best Cleaners', memo: 'Laundry', amount: -(randomFloat(10, 30)), account_id: 5, category_id: 17 };
    console.log(generateTransaction(laundry));

    // Cash adjustment
    var cash1 = { txn_simple_date: day0, payee: 'Misc. Expenses', amount: -(randomFloat(5, 15)), account_id: 1, category_id: 23 };
    var cash2 = { txn_simple_date: day2, payee: 'Misc. Expenses', amount: -(randomFloat(5, 15)), account_id: 1, category_id: 23 };
    var cash3 = { txn_simple_date: day4, payee: 'Misc. Expenses', amount: -(randomFloat(5, 15)), account_id: 1, category_id: 23 };
    var cash4 = { txn_simple_date: day6, payee: 'Misc. Expenses', amount: -(randomFloat(5, 15)), account_id: 1, category_id: 23 };
    console.log(generateTransaction(cash1));
    console.log(generateTransaction(cash2));
    console.log(generateTransaction(cash3));
    console.log(generateTransaction(cash4));
}

function generateExpensesFor1Month(monthStartDate) {

    var weekStartDate = monthStartDate.clone();

    var i = 0;
    for ( ; i < 4; i++, weekStartDate.addWeek() ) {
        generateExpensesFor1Week(weekStartDate);
    }

    // Define some month days
    var monthDay05 = monthStartDate.clone().addDays(5);
    var monthDay10 = monthStartDate.clone().addDays(10);
    var monthDay15 = monthStartDate.clone().addDays(15);
    var monthDay20 = monthStartDate.clone().addDays(20);
    var monthDay25 = monthStartDate.clone().addDays(25);

    // Buy from Amazon 3 times a month
    var groceries = { txn_simple_date: monthDay10, payee: 'Amazon',                   amount: -(randomFloat(40, 100)), account_id: 6, category_id:  9 };
    var software  = { txn_simple_date: monthDay20, payee: 'Amazon', memo: 'Software', amount: -(randomFloat(40, 120)), account_id: 6, category_id: 19 };
    var aws       = { txn_simple_date: monthDay25, payee: 'Amazon', memo: 'AWS',      amount: -(randomFloat(40, 120)), account_id: 6, category_id:  3 };
    console.log(generateTransaction(groceries));
    console.log(generateTransaction(software));
    console.log(generateTransaction(aws));

    // Pay credit card bills
    var xferAmt1 = randomFloat(1100, 1200);
    var xfer2AmEx = { txn_simple_date: monthDay20, payee: 'Transfer to AmEx',       amount: -xferAmt1, account_id:  2, category_id: 21 };
    var xferFChk1 = { txn_simple_date: monthDay20, payee: 'Transfer from Checking', amount:  xferAmt1, account_id:  7, category_id: 21 };

    var xferAmt2 = randomFloat(180, 220);
    var xfer2Amzn = { txn_simple_date: monthDay20, payee: 'Transfer to Amazon',     amount: -xferAmt2, account_id:  2, category_id: 21 };
    var xferFChk2 = { txn_simple_date: monthDay20, payee: 'Transfer from Checking', amount:  xferAmt2, account_id:  6, category_id: 21 };

    var xferAmt3 = randomFloat(500, 640);
    var xfer2Fia =  { txn_simple_date: monthDay20, payee: 'Transfer to FIA',        amount: -xferAmt3, account_id:  2, category_id: 21 };
    var xferFChk3 = { txn_simple_date: monthDay20, payee: 'Transfer from Checking', amount:  xferAmt3, account_id:  5, category_id: 21 };

    console.log(generateTransaction(xfer2AmEx));
    console.log(generateTransaction(xfer2Amzn));
    console.log(generateTransaction(xfer2Fia));
    console.log(generateTransaction(xferFChk1));
    console.log(generateTransaction(xferFChk2));
    console.log(generateTransaction(xferFChk3));

    // Other expense
    var electric  = { txn_simple_date: monthDay25, payee: 'National Grid',       memo: 'Electic bill',   amount: -(randomFloat(100, 200)), account_id: 2, category_id:  2 };
    var water     = { txn_simple_date: monthDay25, payee: 'Orange County',       memo: 'Water bill',     amount: -(randomFloat(100, 200)), account_id: 2, category_id:  2 };
    var education = { txn_simple_date: monthDay25, payee: 'Stanford University', memo: 'Tuition',        amount: -400.00,                  account_id: 2, category_id:  5 };
    var netflix   = { txn_simple_date: monthDay20, payee: 'Netflix',                                     amount:   -9.95,                  account_id: 2, category_id:  6 };
    var atmFee    = { txn_simple_date: monthDay25, payee: 'BofA',                memo: 'ATM charges',    amount: -(randomFloat( 10,  25)), account_id: 2, category_id:  7 };
    var gym       = { txn_simple_date: monthDay25, payee: 'Equinox',             memo: 'Gym membership', amount: -130.00,                  account_id: 5, category_id: 11 };
    var lawncare  = { txn_simple_date: monthDay25, payee: 'Scotts LawnService',                          amount:  -99.95,                  account_id: 5, category_id: 12 };
    var haircut   = { txn_simple_date: monthDay10, payee: 'Supercuts',           memo: 'Haircut',        amount:  -16.00,                  account_id: 5, category_id: 17 };
    var spa       = { txn_simple_date: monthDay20, payee: 'Newbury Day Spa',                             amount:  -60.00,                  account_id: 5, category_id: 17 };
    var cashback  = { txn_simple_date: monthDay25, payee: 'FIA Card Services',   memo: 'Cashback',       amount:   randomFloat(100, 200),  account_id: 5, category_id: 24 };
    var medical1  = { txn_simple_date: monthDay05, payee: 'Pentucket Medical',   memo: 'Medical bill',   amount: -(randomFloat(100, 400)), account_id: 4, category_id: 11 };
    var medical2  = { txn_simple_date: monthDay15, payee: 'Pentucket Medical',   memo: 'Medical bill',   amount: -(randomFloat(100, 400)), account_id: 4, category_id: 11 };
    console.log(generateTransaction(electric));
    console.log(generateTransaction(water));
    console.log(generateTransaction(education));
    console.log(generateTransaction(netflix));
    console.log(generateTransaction(atmFee));
    console.log(generateTransaction(gym));
    console.log(generateTransaction(lawncare));
    console.log(generateTransaction(haircut));
    console.log(generateTransaction(spa));
    console.log(generateTransaction(cashback));
    console.log(generateTransaction(medical1));
    console.log(generateTransaction(medical2));
}

function generateMonthlyExpenses() {

    var monthStartDate = config.begDate.clone();

    for ( ; monthStartDate.lte(config.endDate); monthStartDate.addMonth() ) {
        generateExpensesFor1Month(monthStartDate);

        // Vacation every June
        if (monthStartDate.mm === 6) {
            var travelDay = monthStartDate.clone().addDays(6);
            var air   = { txn_simple_date: travelDay, payee: 'United Airlines', amount: -800.95, account_id: 5, category_id: 22 };
            var hotel = { txn_simple_date: travelDay, payee: 'Hilton',          amount: -962.43, account_id: 5, category_id: 22 };
            console.log(generateTransaction(air));
            console.log(generateTransaction(hotel));
        }

        // Donate every December
        if (monthStartDate.mm === 12) {
            var donationDay = monthStartDate.clone().addDays(30);
            var redCross = { txn_simple_date: donationDay, payee: 'Red Cross', amount: -5000, account_id: 8, category_id: 10 };
            console.log(generateTransaction(redCross));
        }
    }
}

function generateInvestmentsFor1Month(monthStartDate) {

    // Define some month days
    var monthDay03 = monthStartDate.clone().addDays(3);
    var monthDay22 = monthStartDate.clone().addDays(22);

    // Buy/Sell securities on day 3
    var sell1 = { txn_simple_date: monthDay03, payee: 'Liquidate',  amount:   randomFloat( 500, 1000),  account_id:  8, category_id: 15 };
    var buy1  = { txn_simple_date: monthDay03, payee: 'Investment', amount: -(randomFloat(1000, 2500)), account_id:  8, category_id: 14 };
    var buy2  = { txn_simple_date: monthDay03, payee: 'Investment', amount: -(randomFloat( 900, 1000)), account_id:  9, category_id: 14 };
    var buy3  = { txn_simple_date: monthDay03, payee: 'Investment', amount: -(randomFloat( 450,  550)), account_id: 10, category_id: 14 };
    console.log(generateTransaction(sell1));
    console.log(generateTransaction(buy1));
    console.log(generateTransaction(buy2));
    console.log(generateTransaction(buy3));

    // Get interest and dividends on day 22
    var div1  = { txn_simple_date: monthDay22, payee: 'Dividends', amount: randomFloat(20, 100), account_id:  8, category_id:  4 };
    var div2  = { txn_simple_date: monthDay22, payee: 'Dividends', amount: randomFloat(20, 100), account_id:  9, category_id:  4 };
    var div3  = { txn_simple_date: monthDay22, payee: 'Dividends', amount: randomFloat(10,  50), account_id: 10, category_id:  4 };
    var int   = { txn_simple_date: monthDay22, payee: 'Interest',  amount: randomFloat(10,  50), account_id:  3, category_id: 13 };
    console.log(generateTransaction(div1));
    console.log(generateTransaction(div2));
    console.log(generateTransaction(div3));
    console.log(generateTransaction(int));

    // Account management fees
    var mng = { txn_simple_date: monthDay22, payee: 'E*Trade', amount: -(randomFloat(50, 100)), memo: 'Management fees', account_id: 8, category_id: 8 };
    console.log(generateTransaction(mng));
}

function generateMonthlyInvestments() {

    var monthStartDate = config.begDate.clone();

    for ( ; monthStartDate.lte(config.endDate); monthStartDate.addMonth() ) {
        generateInvestmentsFor1Month(monthStartDate);
    }
}

function generateTransactions() {

    generateHeader('transactions');

    generateOpeningBalances();
    generatePaychecks();
    generateMonthlyExpenses();
    generateMonthlyInvestments();

    setSequenceValue('transactions');
}


// ----- Main -----
generateCategories(categories);
generateAccounts(accounts);
generateTransactions();
