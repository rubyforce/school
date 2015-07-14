@midday_managements.controller 'CreateDailyMealsController', [
  '$scope', 'DailyMeal', 'Food'
  ($scope, DailyMeal, Food) ->
    $scope.dateOptions =
      changeMonth: true
      changeYear: true
      yearRange: "1950:-0"

    $scope.alert = false

    CURRENT_DATE =
      date: new Date

    build = -> _.clone(CURRENT_DATE)

    $scope.daily_meal = build()

    $scope.daily_meal = new DailyMeal()
    $scope.daily_meal.foods = []

    $scope.add = ->
      debugger
      $scope.daily_meal.foods.push(new Food())
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
