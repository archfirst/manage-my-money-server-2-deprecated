'use strict';

module.exports = {
    createCategory: createCategory,
    updateCategory: updateCategory,
    getCategory: getCategory,
    getCategories: getCategories,
    deleteCategory: deleteCategory
};

var knex = require('./db').knex;
var joinjs = require('join-js');
var errors = require('./../../infrastructure/errors');
var resultMaps = require('./resultmaps');
var domain = require('../../domain');
var Category = domain.Category;

/**
 * Creates a new category and inserts it in to the database.
 * @param {Object} categoryData - Full category data, excluding the id. For example:
 * {
 *     name: 'Shopping'
 * }
 * @return {Promise} A promise that returns a full copy of the inserted category (including the id) on fulfillment.
 */
function createCategory(categoryData) {

    var category = new Category(categoryData);

    return knex('categories')
        .returning('id')
        .insert(category)
        .then(function(ids) {
            category.id = ids[0];
            return category;
        });
}

/**
 * Updates an existing category.
 * @param {Object} categoryData - Full category data, including the id. For example:
 * {
 *     id: 1,
 *     name: 'Shopping'
 * }
 * @return {Promise} A promise that returns a full copy of the inserted category (including the id) on fulfillment.
 */
function updateCategory(categoryData) {

    var category = new Category(categoryData);

    return knex('categories')
        .where('id', category.id)
        .update(category)
        .then(function() {
            return category;
        });
}

/**
 * Gets an existing category.
 * @param {integer} id
 * @return {Promise} A promise that returns the desired category on fulfillment.
 */
function getCategory(id) {
    return knex
        .select('id', 'name')
        .from('categories')
        .where('id', id)

        .then(function(resultSet) {
            return joinjs.mapOne(resultSet, resultMaps, 'categoryMap');
        })
        .catch(joinjs.NotFoundError, function(e) {
            throw new errors.NotFoundError(e.message);
        });
}

/**
 * Gets all categories.
 * @return {Promise} A promise that returns an array of all categories on fulfillment.
 */
function getCategories() {
    return knex
        .select('id', 'name')
        .from('categories')

        .then(function(resultSet) {
            return joinjs.map(resultSet, resultMaps, 'categoryMap');
        });
}

/**
 * Deletes a category.
 * @param {integer} id
 * @return {Promise} A promise that gets fulfilled when the category is deleted.
 */
function deleteCategory(id) {
    return knex('categories')
        .where('id', id)
        .delete();
}