'use strict';

var _ = require('lodash');

var Category = function(categoryData) {
    if (categoryData) {
        _.extend(this, categoryData);
    }
};

module.exports = Category;
