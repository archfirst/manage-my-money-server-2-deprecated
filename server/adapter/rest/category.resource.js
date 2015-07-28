'use strict';

module.exports = {
    addRoutes: addRoutes
};

/**
 * Adds routes to the api.
 */
function addRoutes(api) {
    api.post('/categories', createCategory);
    api.put('/categories/:id', updateCategory);
    api.get('/categories/:id', getCategory);
    api.get('/categories', getCategories);
    api.delete('/categories/:id', deleteCategory);
}

var infrastructure = require('../../infrastructure');
var log = infrastructure.logger;
var errors = infrastructure.errors;

var categoryService = require('../../application').categoryService;

/**
 * Creates a new category and inserts it in to the database.
 * @param {Object} req - req.body contains categoryData minus the id
 * @param {Object} res - res.body contains the inserted category (including the id)
 */
function createCategory(req, res) {

    var categoryData = req.body;

    categoryService.createCategory(categoryData)
        .then(function(category) {
            res.send(category);
        })
        .catch(function(error) {
            log.error(error);
            res.status(500).send({'message': error.toString()});
        });
}

/**
 * Updates an existing category.
 * @param {Object} req - req.body contains categoryData including the id
 * @param {Object} res - res.body contains the updated category (including the id)
 */
function updateCategory(req, res) {

    var categoryData = req.body;

    categoryService.updateCategory(categoryData)
        .then(function(category) {
            res.send(category);
        })
        .catch(function(error) {
            log.error(error);
            res.status(500).send({'message': error.toString()});
        });
}

/**
 * Gets an existing category.
 * @param {Object} req - req.params.id contains id of the category to get
 * @param {Object} res - res.body contains the requested category
 */
function getCategory(req, res) {

    var id = req.params.id;

    categoryService.getCategory(id)
        .then(function(category) {
            res.send(category);
        })
        .catch(errors.NotFoundError, function() {
            res.status(404).send({'message': 'Category ' + id + ' does not exist'});
        })
        .catch(function(error) {
            log.error(error);
            res.status(500).send({'message': error.toString()});
        });
}

/**
 * Gets all categories.
 * @param {Object} req - no used
 * @param {Object} res - res.body contains an array of all categories
 */
function getCategories(req, res) {
    categoryService.getCategories()
        .then(function(categories) {
            res.send(categories);
        })
        .catch(function(error) {
            log.error(error);
            res.status(500).send({'message': error.toString()});
        });
}

/**
 * Deletes a category.
 * @param {Object} req - req.params.id contains id of the category to delete
 * @param {Object} res - res.body contains no content
 */
function deleteCategory(req, res) {

    var id = req.params.id;

    categoryService.deleteCategory(id)
        .then(function() {
            res.status(204).send();  // No Content
        })
        .catch(function(error) {
            log.error(error);
            res.status(500).send({'message': error.toString()});
        });
}
