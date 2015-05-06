@cash_managements.controller 'CreateSalaryController', [
  '$scope', 'CashManagement'
  ($scope, CashManagement) ->
    $scope.alert = false

    $scope.create = ->
      new CashManagement($scope.salary).create().then (response) ->
        $scope.cash_managements.push(new CashManagement(response))
        $scope.alert = true

]
