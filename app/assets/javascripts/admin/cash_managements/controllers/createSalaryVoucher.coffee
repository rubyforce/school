@cash_managements.controller 'CreateSalaryController', [
  '$scope', 'CashManagement', 'Employee'
  ($scope, CashManagement, Employee) ->

    $scope.alert = false
    Employee.query().then ((response) ->
      $scope.employee = response
    )

    $scope.create = ->
      new CashManagement($scope.salary).create().then (response) ->
        $scope.cash_managements.push(new CashManagement(response))
        $scope.alert = true
    
]
