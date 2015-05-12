@daily_meals.controller 'CreateDailyMealsController', [
  '$scope', 'DailyMeal'
  ($scope, DailyMeal) ->

    $scope.add = ->
      new DailyMeal($scope.daily_meal).create().then (response) ->
        $scope.daily_meals.push(new DailyMeal(response))
      $scope.daily_meal = {}
      $scope.qty = ''

    $scope.total_number = ->
      $scope.daily_meal.total_number =
            parseInt($scope.daily_meal.no_of_student1, 10) + parseInt($scope.daily_meal.no_of_student2, 10) +
            parseInt($scope.daily_meal.no_of_student3, 10) + parseInt($scope.daily_meal.no_of_student4, 10) +
            parseInt($scope.daily_meal.no_of_student5, 10)
      $scope.daily_meal.qty = parseInt($scope.daily_meal.total_number, 10) * parseInt($scope.qty, 10)

    $scope.reset = ->
      $scope.daily_meal = {}
]
