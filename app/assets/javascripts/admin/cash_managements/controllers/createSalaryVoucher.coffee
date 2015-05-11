@cash_managements.controller 'CreateSalaryController', [
  '$scope', 'SalaryReceipt'
  ($scope, SalaryReceipt) ->
    $scope.alert = false

    $scope.create = ->
      new SalaryReceipt($scope.salary).create().then (response) ->
        $scope.alert = true
]
