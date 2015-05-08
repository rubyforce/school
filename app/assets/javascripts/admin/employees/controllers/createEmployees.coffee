@employees.controller 'CreateEmployeesController', [
  '$scope', 'Employee', 'uuid4'
  ($scope, Employee, uuid4) ->


    DEFAULT_EMPLOYEE =
      entry_no: 'auto'

    build = -> _.clone(DEFAULT_EMPLOYEE)

    $scope.alert = false

    $scope.employee = build()

    $scope.years = []
    i = 0
    while i <= 100
      $scope.years.push(2013 + i)
      i++

    $scope.generate = ->
      $scope.employee.entry_no = uuid4.generate()

    $scope.create = ->
      new Employee($scope.employee).create().then (response) ->
        $scope.employees.push(new Employee(response))
        $scope.employee = build()
        $scope.alert = true
]
