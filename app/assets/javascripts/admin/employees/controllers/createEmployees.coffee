@employees.controller 'CreateEmployeesController', [
    '$scope', 'Employee'
    ($scope, Employee) ->
        DEFAULT_EMPLOYEE =
            entry_no: 'auto'

        build = -> _.clone(DEFAULT_EMPLOYEE)

        $scope.employee = build()

        $scope.create = ->
            new Employee($scope.employee).create().then (response) ->
                $scope.employees.push(new Employee(response))
                $scope.employee = build()
]
