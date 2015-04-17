@employees.controller 'CreateEmployeesController', [
  '$scope', 'Employee'
  ($scope, Employee) ->
    DEFAULT_EMPLOYEE =
      entry_no: 'auto'

    build = -> _.clone(DEFAULT_EMPLOYEE)

    $scope.alert = false
    
    $scope.employee = build()

    $scope.create = ->
      debugger
      new Employee($scope.employee).create().then (response) ->
        $scope.employees.push(new Employee(response))
        $scope.employee = build()
        $scope.alert = true
]
