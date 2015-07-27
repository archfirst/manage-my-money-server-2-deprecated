'use strict';

module.exports = function() {

    this.World = require('./support/world').World;

    this.Given(/^a category called "([^"]*)"$/, function(name, callback) {
        this.createCategory(name, callback);
    });

    this.When(/^I create a category called "([^"]*)"$/, function(name, callback) {
        this.createCategory(name, callback);
    });

    this.Given(/^the following categories$/, function (table, callback) {
        this.createCategories(table.hashes(), callback);
    });

    this.When(/^I change the category name to "([^"]*)"$/, function(name, callback) {
        this.changeCategoryName(name, callback);
    });

    this.When(/^I ask for the category$/, function(callback) {
        this.getCategory(callback);
    });

    this.When(/^I delete the category$/, function(callback) {
        this.deleteCategory(callback);
    });

    this.Then(/^I should get the category called "([^"]*)"$/, function(name, callback) {
        this.assertCategoryName(name);
        callback();
    });

    this.Then(/^the category should not exist$/, function(callback) {
        this.assertCategoryDoesNotExist(callback);
    });
};