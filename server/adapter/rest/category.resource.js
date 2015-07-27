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
    api.get('/categories', getCategories);
    api.get('/categories/:id', getCategory);
    api.delete('/categories/:id', deleteCategory);
}


var infrastructure = require('../../infrastructure');
var log = infrastructure.logger;
var errors = infrastructure.errors;

var application = require('../../application');
var categoryService = application.categoryService;

/**
 * Creates a new category.
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