'use strict';

var joinjs = require('join-js').default;

var errors = {
    // Thrown when a persistent object is not found
    NotFoundError: joinjs.NotFoundError
};

module.exports = errors;
