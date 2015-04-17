@cash_managements.controller 'CashManagementsController', [
    '$scope', '$state', 'CashManagement', 'Employee'
    ($scope, $state, CashManagement, Employee) ->
        $state.go('cash_managements.settlements')

        Employee.get().then (employees) ->
          $scope.employees = employees

        CashManagement.get().then (cash_managements) ->
            $scope.cash_managements = cash_managements
]
