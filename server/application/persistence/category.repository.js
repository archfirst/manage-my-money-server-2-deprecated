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
var resultMaps = require('./resultmaps');
var Category = require('../../domain').Category;

/**
 * Creates a new category and inserts it in to the database.
 * @param {Object} categoryData minus the id
 * @return {Promise} A promise that returns the inserted category (including the id)
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
 * @param {Object} categoryData including the id
 * @return {Promise} A promise that returns the updated category (including the id)
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
