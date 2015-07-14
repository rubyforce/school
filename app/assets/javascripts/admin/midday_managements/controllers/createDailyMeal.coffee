@midday_managements.controller 'CreateDailyMealsController', [
  '$scope', 'DailyMeal'
  ($scope, DailyMeal) ->
    $scope.dateOptions =
      changeMonth: true
      changeYear: true
      yearRange: "1950:-0"

    $scope.alert = false

    build = -> new DailyMeal(date: new Date())

    $scope.meal = {}
    $scope.foods = []
    $scope.daily_meal = build()

    $scope.add = ->
      meal = _($scope.meals).chain().find((m)-> parseInt(m.id, 10) is parseInt($scope.meal.meal_id, 10)).value()
      $scope.meal.title = meal.title
      $scope.foods.push(_.clone($scope.meal))
      $scope.meal = {}

    $scope.reset = ->
      $scope.daily_meal = new DailyMeal()
      $scope.meal = {}
      $scope.foods = []

    $scope.submit = ->
      $scope.daily_meal.dailyMealMealsAttributes = $scope.meals
      $scope.daily_meal.create().then (response) ->
        $scope.alert = true
        $scope.reset()
]
