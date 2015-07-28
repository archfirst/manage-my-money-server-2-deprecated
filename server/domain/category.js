'use strict';

/**
 * A category.
 *   {int}     id
 *   {String}  name - name of the category
 *
 * Example:
 *   {
 *       id: [number],
 *       name: 'Shopping'
 *   }
 */

var _ = require('lodash');

var Category = function(categoryData) {
    if (categoryData) {
        _.extend(this, categoryData);
    }
};

module.exports = Category;
