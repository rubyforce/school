@employees.controller 'EmployeesController', [
    '$scope', '$state', 'Employee'
    ($scope, $state, Employee) ->
        $state.go('employees.new')

        Employee.get().then (employees) ->
            $scope.employees = employees
]
