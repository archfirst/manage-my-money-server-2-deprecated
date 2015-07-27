'use strict';

var bunyan = require('bunyan');

var logger = bunyan.createLogger({
    name: 'mmm',
    streams: [
        {
            level: 'info',
            stream: process.stdout     // log INFO and above to stdout
        },
        {
            level: 'error',
            path: 'mmm-error.log'      // log ERROR and above to a file
        }
    ]
});

module.exports = logger;
