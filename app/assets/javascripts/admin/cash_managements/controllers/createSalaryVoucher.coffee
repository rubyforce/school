@cash_managements.controller 'CreateSalaryController', [
  '$scope', 'CashManagement', 'Employee'
  ($scope, CashManagement, Employee) ->

    $scope.alert = false

    Employee.query().then ((response) ->
      $scope.employee = response
    )

    $scope.years = []
    i = 0
    while i <= 100
      $scope.years.push(2013 + i)
      i++

    $scope.months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October",
                      "November", "December"]
    
    $scope.create = ->
      new CashManagement($scope.salary).create().then (response) ->
        $scope.cash_managements.push(new CashManagement(response))
        $scope.alert = true

]
