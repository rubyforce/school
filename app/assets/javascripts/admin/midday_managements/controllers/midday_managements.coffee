@midday_managements.controller 'MiddayManagementsController', [
    '$scope', '$state', 'MiddayManagement'
    ($scope, $state, MiddayManagement) ->
        $state.go('midday_managements.daily_meal')

        MiddayManagement.get().then (midday_managements) ->
            $scope.midday_managements = midday_managements
]
