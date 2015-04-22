@employees.controller 'EmployeesController', [
    '$scope', '$state', 'Employee', 'PaidType'
    ($scope, $state, Employee, PaidType) ->
        $state.go('employees.new')

        PaidType.get().then (paid_types) ->
            $scope.paid_types = paid_types

        Employee.get().then (employees) ->
            $scope.employees = employees
]
