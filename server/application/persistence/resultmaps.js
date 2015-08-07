'use strict';

var domain = require('../../domain');

var resultMaps = [
    {
        mapId: 'accountMap',
        createNew: function() {
            return new domain.Account();
        },
        properties: ['name']
    },

    {
        mapId: 'categoryMap',
        createNew: function() {
            return new domain.Category();
        },
        properties: ['name']
    },

    {
        mapId: 'transactionMap',
        createNew: function() {
            return new domain.Transaction();
        },
        properties: ['txn_date', 'payee', 'memo', 'amount'],
        associations: [
            {name: 'account', mapId: 'accountMap', columnPrefix: 'account_'},
            {name: 'category', mapId: 'categoryMap', columnPrefix: 'category_'}
        ]
    }
];

module.exports = resultMaps;
