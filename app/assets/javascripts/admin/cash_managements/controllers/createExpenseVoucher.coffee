@cash_managements.controller 'CreateExpenseController', [
  '$scope', 'CashManagement'
  ($scope, CashManagement) ->

    $scope.alert = false

    $scope.create = ->
      new CashManagement($scope.expense).create().then (response) ->
        $scope.cash_managements.push(new CashManagement(response))
        $scope.alert = true

]
