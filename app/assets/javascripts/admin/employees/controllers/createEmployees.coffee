@employees.controller 'CreateEmployeesController', [
  '$scope', 'Employee', 'uuid4'
  ($scope, Employee, uuid4) ->
    $scope.dateOptions =
      changeMonth: true
      changeYear: true
      yearRange: "1950:-0"

    $scope.alert = false

    $scope.generate = ->
      $scope.employee.entry_no = uuid4.generate()

    DEFAULT_EMPLOYEE =
      entry_no: 'auto'

    build = -> _.clone(DEFAULT_EMPLOYEE)

    $scope.employee = build()
    $scope.generate()

    $scope.create = ->
      new Employee($scope.employee).create().then (response) ->
        $scope.employees.push(new Employee(response))
        $scope.employee = build()
        $scope.alert = true
]
