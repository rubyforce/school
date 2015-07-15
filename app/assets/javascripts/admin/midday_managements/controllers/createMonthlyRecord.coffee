@midday_managements.controller 'CreateMonthlyRecordsController', [
  '$scope', 'MonthlyRecord', '$http', '$timeout'
  ($scope, MonthlyRecord, $http, $timeout) ->
    $scope.alert = false

    $scope.foods = []
    $scope.months = {}

    class Month
      constructor: (response) ->
        response = (response.data || [])[0]
        return if _.isUndefined(response) || _.isUndefined(response.daily_meal_meals)

        @no_of_student1 = _.sum(response.daily_meal_meals, 'no_of_student1')
        @no_of_student2 = _.sum(response.daily_meal_meals, 'no_of_student2')
        @no_of_student3 = _.sum(response.daily_meal_meals, 'no_of_student3')
        @no_of_student4 = _.sum(response.daily_meal_meals, 'no_of_student4')
        @no_of_student5 = _.sum(response.daily_meal_meals, 'no_of_student5')

    $scope.$watch 'monthly_record.month', (month) ->
      return unless month?

      $http.get("/admin/monthly_records/month?month=#{parseInt(month, 10) + 1}").then (response) ->
        $timeout ->
          $scope.months[month] = new Month(response)

    $scope.add = ->
      debugger
      meal = _($scope.meals).chain().find((m)-> parseInt(m.id, 10) is parseInt($scope.meal.meal_id, 10)).value()
      $scope.meal.title = meal.title
      $scope.foods.push(_.clone($scope.meal))

    $scope.create = ->
      $scope.monthly_record.monthlyMealMealsAttributes = $scope.foods

      new MonthlyRecord($scope.monthly_record).create().then (response) ->
        $scope.monthly_records.push(new MonthlyRecord(response))
        $scope.alert = true
      $scope.monthly_record = {}

    $scope.reset = ->
      $scope.monthly_record = {}
      $scope.meal = {}
      $scope.foods = []
]
