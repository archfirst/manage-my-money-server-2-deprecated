'use strict';

var domain = require('../../domain');

var resultMaps = [
    {
        mapId: 'accountMap',
        createNew: function() {
            return new domain.Account();
        },
        properties: [
            {name: 'name', column: 'name'}
        ]
    },

    {
        mapId: 'categoryMap',
        createNew: function() {
            return new domain.Category();
        },
        properties: [
            {name: 'name', column: 'name'}
        ]
    },

    {
        mapId: 'transactionMap',
        createNew: function() {
            return new domain.Transaction();
        },
        properties: [
            {name: 'txn_date', column: 'txn_date'},
            {name: 'payee', column: 'payee'},
            {name: 'memo', column: 'memo'},
            {name: 'amount', column: 'amount'}
        ],
        associations: [
            {name: 'account', mapId: 'accountMap', columnPrefix: 'account_'},
            {name: 'category', mapId: 'categoryMap', columnPrefix: 'category_'}
        ]
    }
];

module.exports = resultMaps;
