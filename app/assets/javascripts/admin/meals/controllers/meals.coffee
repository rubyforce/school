@meals.controller 'MealsController', [
    '$scope', '$state', 'Meal'
    ($scope, $state, Meal) ->

        Meal.get().then (meals) ->
            $scope.meals = meals
]
