'use strict'

### Controllers ###


nextStepsApp = angular.module('nextStepsApp', [])
nextStepsApp.controller 'NextStepsCtrl', ($scope) ->
  $scope.items =[
    {name: "Name 1"}
    {name: "Name 2"}
    {name: "Name 3"}
  ]
  return null

module.exports = nextStepsApp
