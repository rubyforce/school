@cash_managements.controller 'CreateSalaryController', [
  '$scope', 'CashManagement', 'Employee'
  ($scope, CashManagement, Employee) ->

    $scope.alert = false
    debugger
    Employee.query(first_name: $scope.first_name).then ((response) ->
      $scope.user = response
    )

    $scope.create = ->
      new CashManagement($scope.salary).create().then (response) ->
        $scope.cash_managements.push(new CashManagement(response))
        $scope.alert = true
    
]
