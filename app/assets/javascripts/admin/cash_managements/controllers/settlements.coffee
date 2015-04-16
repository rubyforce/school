@cash_managements.controller 'CashManagementsController', [
    '$scope', '$state', 'CashManagement'
    ($scope, $state, CashManagement) ->
        $state.go('cash_managements.settlements')

        CashManagement.get().then (cash_managements) ->
            $scope.cash_managements = cash_managements
]
