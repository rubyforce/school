@meals.controller 'CreateMealController', [
  '$scope', 'Meal'
  ($scope, Meal) ->

    $scope.alert = false

    $scope.create = ->
      new Meal($scope.meal).create().then (response) ->
        $scope.meals.push(new Meal(response))
        $scope.alert = true
]
