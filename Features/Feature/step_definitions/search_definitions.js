'use strict';

var searchDefinitions = function () {
  this.World = require('../support/world.js').World;
  this.Given(/^visito a página de busca$/, function (callback) {
    this.browser.visitPath('/v1/VejaSP/search', callback);
  });
};

module.exports = searchDefinitions;