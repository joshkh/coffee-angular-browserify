'use strict'

### Controllers ###

power = require './power'

nextStepsApp = angular.module('nextStepsApp', [])
nextStepsApp.controller 'NextStepsCtrl', ($scope) ->

  $scope.menuitems = [
    {
      category: "GO"
      tools: [
        {name: "Parent GO Terms"}
        {name: "Another GO Tool"}
        {name: "Third GO Tool"}
      ]
    }
    {
      category: "Expression"
      tools: [
        {name: "Some expression tool"}
        {name: "Another expression tool"}
      ]
    }
    {
      category: "Function"
      tools: [
        {name: "What the func."}
      ]
    }
  ]
  
  $scope.items =[
    {
      category: "GO"
      name: "Parent GO Terms"
    },
    {
      category: "GO"
      name: "Another GO Tool"
    },
    {
      category: "Expression"
      name: "Expression Analyzer"
    },
    {
      category: "Expression"
      name: "Expression Visualizer"
    },
    {
      category: "Function"
      name: "What the func."
    }
  ]

module.exports = nextStepsApp
