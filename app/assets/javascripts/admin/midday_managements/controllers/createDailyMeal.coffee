@midday_managements.controller 'CreateDailyMealsManagementsController', [
  '$scope', 'MiddayManagement'
  ($scope, MiddayManagement) ->
    $scope.dateOptions =
      changeMonth: true
      changeYear: true
      yearRange: "1950:-0"

    $scope.alert = false

    $scope.create = ->
      new MiddayManagement($scope.midday_meal).create().then (response) ->
        debugger
        $scope.midday_managements.push(new MiddayManagement(response))
        $scope.alert = true
]
