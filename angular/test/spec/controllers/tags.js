'use strict';

describe('Controller: TagsCtrl', function () {

  // load the controller's module
  beforeEach(module('angularApp'));

  var TagsCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    TagsCtrl = $controller('TagsCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(scope.awesomeThings.length).toBe(3);
  });
});
