@midday_managements.controller 'CreateMonthlyRecordController', [
  '$scope', 'MiddayManagement'
  ($scope, MiddayManagement) ->

    $scope.months = ["January", "February", "March", "April", "May", "June",
                     "July", "August", "September", "October", "November", "December"]

    $scope.alert = false

    $scope.create = ->
      new MiddayManagement($scope.midday_meal).create().then (response) ->
        $scope.midday_managements.push(new MiddayManagement(response))
        $scope.alert = true

    $scope.add = ->
      $scope.midday_managements.push(new MiddayManagement($scope.midday_meal))

    $scope.reset = ->
      $scope.midday_meal = {}
]
