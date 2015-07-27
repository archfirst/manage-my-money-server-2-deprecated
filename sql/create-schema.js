'use strict';

var dbConfig = {
    client: 'postgresql',
    debug: true,
    connection: {
        host: 'localhost',
        user: '',
        password: '',
        database: 'manage-my-money',
        charset: 'utf8'
    }
};

var knex = require('knex')(dbConfig);

knex.schema

    /***** Drop foreign keys *****/
    .table('transactions', function(table) {
        table.dropForeign('account_id');
    })

    .table('transactions', function(table) {
        table.dropForeign('category_id');
    })


    /***** Drop tables *****/
    .dropTableIfExists('accounts')
    .dropTableIfExists('categories')
    .dropTableIfExists('transactions')


    /***** Create tables (in alphabetic order) *****/
    // Accounts
    .createTable('accounts', function(table) {
        table.increments('id');
        table.string('name', 64).notNullable().unique();
    })

    // Categories
    .createTable('categories', function(table) {
        table.increments('id');
        table.string('name', 64).notNullable().unique();
    })

    // Transactions
    .createTable('transactions', function(table) {
        table.increments('id');
        table.timestamp('txn_date').notNullable();
        table.string('payee', 64).notNullable();
        table.string('memo', 128);
        table.decimal('amount', 19, 4).notNullable();
    })


    /***** Add foreign keys *****/
    .table('transactions', function(table) {
        table.integer('account_id').unsigned().notNullable().references('accounts.id');
        table.integer('category_id').unsigned().notNullable().references('categories.id');
    })


    /***** Destroy the database connection pool *****/
    .then(function() {
        knex.destroy();
    })


    // Finally, add a .catch handler for the promise chain
    .catch(function(e) {
        console.error(e);
    });
