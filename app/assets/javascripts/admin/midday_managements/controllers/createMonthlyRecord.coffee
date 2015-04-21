@midday_managements.controller 'CreateMonthlyRecordController', [
  '$scope', 'MiddayManagement'
  ($scope, MiddayManagement) ->

    $scope.alert = false

    $scope.create = ->
      debugger
      new MiddayManagement($scope.midday_meal).create().then (response) ->
        $scope.midday_managements.push(new MiddayManagement(response))
        $scope.alert = true

    $scope.reset = ->
      $scope.midday_meal =null
]
