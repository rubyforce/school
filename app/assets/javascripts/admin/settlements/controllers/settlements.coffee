@settlements.controller 'SettlementsController', [
    '$scope', '$state', 'Settlement'
    ($scope, $state, Settlement) ->
        $state.go('settlements.new')

        Settlement.get().then (settlements) ->
            $scope.settlements = settlements
]
