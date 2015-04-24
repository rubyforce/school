@midday_managements.controller 'CreateDailyMealsManagementsController', [
  '$scope', 'MiddayManagement'
  ($scope, MiddayManagement) ->

    $scope.alert = false

    $scope.create = ->
      new MiddayManagement($scope.midday_meal).create().then (response) ->
        $scope.midday_managements.push(new MiddayManagement(response))
        $scope.alert = true
]
