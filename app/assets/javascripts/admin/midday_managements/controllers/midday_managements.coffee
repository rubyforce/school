@midday_managements.controller 'MiddayManagementsController', [
    '$scope', '$state', 'MiddayManagement', 'Meal', 'DailyMeal'
    ($scope, $state, MiddayManagement, Meal, DailyMeal) ->
        $state.go('midday_managements.daily_meal')

        Meal.get().then (meals) ->
            $scope.meals = meals

        DailyMeal.get().then (daily_meals ) ->
            $scope.daily_meals = daily_meals

        MiddayManagement.get().then (midday_managements) ->
            $scope.midday_managements = midday_managements
]
