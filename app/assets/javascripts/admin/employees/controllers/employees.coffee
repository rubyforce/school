@employees.controller 'EmployeesController', [
    '$scope', '$state', 'Employee', 'PaidType', 'Section'
    ($scope, $state, Employee, PaidType, Section) ->
        $state.go('employees.new')

        PaidType.get().then (paid_types) ->
            $scope.paid_types = paid_types

        Section.get().then (sections) ->
            $scope.sections = sections

        Employee.get().then (employees) ->
            $scope.employees = employees
]
