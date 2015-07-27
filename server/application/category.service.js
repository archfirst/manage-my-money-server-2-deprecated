'use strict';

module.exports = {
    createCategory: createCategory,
    updateCategory: updateCategory,
    getCategory: getCategory,
    getCategories: getCategories,
    deleteCategory: deleteCategory
};

var persistence = require('./persistence');
var CategoryRepository = persistence.categoryRepository;

/**
 * Creates a new category and inserts it in to the database.
 * @param {Object} categoryData - Full category data, excluding the id. For example:
 * {
 *     name: 'Shopping'
 * }
 * @return {Promise} A promise that returns a full copy of the inserted category (including the id) on fulfillment.
 */
function createCategory(categoryData) {
    return CategoryRepository.createCategory(categoryData);
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
    return CategoryRepository.updateCategory(categoryData);
}

/**
 * Gets an existing category.
 * @param {integer} id
 * @return {Promise} A promise that returns the desired category on fulfillment.
 */
function getCategory(id) {
    return CategoryRepository.getCategory(id);
}

/**
 * Gets all categories.
 * @return {Promise} A promise that returns an array of all categories on fulfillment.
 */
function getCategories() {
    return CategoryRepository.getCategories();
}

/**
 * Deletes a category.
 * @param {integer} id
 * @return {Promise} A promise that gets fulfilled when the category is deleted.
 */
function deleteCategory(id) {
    return CategoryRepository.deleteCategory(id);
}