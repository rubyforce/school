@cash_managements.controller 'CashManagementsController', [
    '$scope', '$state', 'CashManagement', 'Employee', 'Nature'
    ($scope, $state, CashManagement, Employee, Nature) ->
        $state.go('cash_managements.settlements')

        Employee.get().then (employees) ->
          $scope.employees = employees

        Nature.get().then (natures ) ->
            $scope.natures = natures

        CashManagement.get().then (cash_managements) ->
            $scope.cash_managements = cash_managements
]
