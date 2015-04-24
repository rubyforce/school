@midday_managements.controller 'MiddayManagementsController', [
    '$scope', '$state', 'MiddayManagement', 'Meal', 'DailyMeal', 'MonthlyRecord'
    ($scope, $state, MiddayManagement, Meal, DailyMeal, MonthlyRecord) ->
        $state.go('midday_managements.daily_meal')

        Meal.get().then (meals) ->
            $scope.meals = meals

        DailyMeal.get().then (daily_meals) ->
            $scope.daily_meals = daily_meals

        MonthlyRecord.get().then (monthly_records) ->
            $scope.monthly_records = monthly_records

        MiddayManagement.get().then (midday_managements) ->
            $scope.midday_managements = midday_managements
]
