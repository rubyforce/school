@midday_managements.controller 'CreateDailyMealsController', [
  '$scope', 'DailyMeal'
  ($scope, DailyMeal) ->
    $scope.dateOptions =
      changeMonth: true
      changeYear: true
      yearRange: "1950:-0"

    $scope.alert = false

    CURRENT_DATE =
      date: new Date

    build = -> _.clone(CURRENT_DATE)

    $scope.daily_meal = build()

    $scope.add = ->
      new DailyMeal($scope.daily_meal).create().then (response) ->
        $scope.daily_meals.push(new DailyMeal(response))
        $scope.daily_meal = {}
        $scope.qty = ''
        $scope.alert = true

    $scope.total_number = ->
      $scope.daily_meal.total_number =
        parseInt($scope.daily_meal.no_of_student1, 10) + parseInt($scope.daily_meal.no_of_student2, 10) +
        parseInt($scope.daily_meal.no_of_student3, 10) + parseInt($scope.daily_meal.no_of_student4, 10) +
        parseInt($scope.daily_meal.no_of_student5, 10)
      $scope.daily_meal.qty = parseInt($scope.daily_meal.total_number, 10) * ($scope.qty)

    $scope.reset = ->
      $scope.qty = ''
      $scope.daily_meal.meal = ''
]
