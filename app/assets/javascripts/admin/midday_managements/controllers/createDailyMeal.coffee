@midday_managements.controller 'CreateDailyMealController', [
  '$scope', 'MiddayManagement'
  ($scope, MiddayManagement) ->

    $scope.alert = false

    $scope.months = ["January", "February", "March", "April", "May", "June",
                     "July", "August", "September", "October", "November", "December"]

    $scope.create = ->
      new MiddayManagement($scope.midday_meal).create().then (response) ->
        $scope.midday_managements.push(new MiddayManagement(response))
        $scope.alert = true

]
