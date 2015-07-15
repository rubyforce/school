@midday_managements.controller 'CreateMonthlyRecordsController', [
  '$scope', 'MonthlyRecord', '$http', '$timeout'
  ($scope, MonthlyRecord, $http, $timeout) ->
    $scope.alert = false

    $scope.foods = []
    $scope.months = {}

    class Month
      constructor: (response) ->
        response = response.data || {}

        @no_of_student1 = 0
        @no_of_student2 = 0
        @no_of_student3 = 0
        @no_of_student4 = 0
        @no_of_student5 = 0

        for d in response.daily_meals
          @no_of_student1 += _.sum(d.daily_meal_meals, 'no_of_student1')
          @no_of_student2 += _.sum(d.daily_meal_meals, 'no_of_student2')
          @no_of_student3 += _.sum(d.daily_meal_meals, 'no_of_student3')
          @no_of_student4 += _.sum(d.daily_meal_meals, 'no_of_student4')
          @no_of_student5 += _.sum(d.daily_meal_meals, 'no_of_student5')

        @meals = {}
        for meal in response.monthly_record.monthly_meal_meals || []
          m = _.clone(meal)
          @meals[m.id.toString()] = m
          m.last_received = 0
          m.ordered = 0
          m.used = 0

        @meals

    $scope.getLastReceived = ->
      debugger

      return 0 unless month?
      return 1 unless meal?
      return 2 unless meal.meal_id?

      debugger
      months[month].meals[meal.meal_id].last_received


    $scope.$watch 'monthly_record.month', (month) ->
      return unless month?

      $http.get("/admin/monthly_records/month?month=#{parseInt(month, 10) + 1}").then (response) ->
        $timeout ->
          $scope.months[month] = new Month(response)

    $scope.add = ->
      meal = _($scope.meals).chain().find((m)-> parseInt(m.id, 10) is parseInt($scope.meal.meal_id, 10)).value()
      $scope.meal.title = meal.title
      $scope.foods.push(_.clone($scope.meal))

    $scope.create = ->
      $scope.monthly_record.month = parseInt($scope.monthly_record.month, 10) + 1
      $scope.monthly_record.monthlyMealMealsAttributes = $scope.foods

      new MonthlyRecord($scope.monthly_record).create().then (response) ->
        $scope.alert = true
        $scope.reset()

    $scope.reset = ->
      $scope.monthly_record = {}
      $scope.meal = {}
      $scope.foods = []
]
