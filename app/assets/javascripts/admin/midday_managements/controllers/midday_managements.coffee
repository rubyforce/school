@midday_managements.controller 'MiddayManagementsController', [
    '$scope', '$state', 'MiddayManagement', 'Meal'
    ($scope, $state, MiddayManagement, Meal) ->
        $state.go('midday_managements.daily_meal')

        Meal.get().then (meals) ->
            $scope.meals = meals

        MiddayManagement.get().then (midday_managements) ->
            $scope.midday_managements = midday_managements
]
