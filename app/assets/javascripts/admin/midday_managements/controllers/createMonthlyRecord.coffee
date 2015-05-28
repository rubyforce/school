@midday_managements.controller 'CreateMonthlyRecordsController', [
  '$scope', 'MonthlyRecord'
  ($scope, MonthlyRecord) ->
    $scope.alert = false

    $scope.total1 = ->
      _.sum $scope.daily_meals, (daily) ->
        daily.noOfStudent1

    $scope.total2 = ->
      _.sum $scope.daily_meals, (daily) ->
        daily.noOfStudent2

    $scope.total3 = ->
      _.sum $scope.daily_meals, (daily) ->
        daily.noOfStudent3

    $scope.total4 = ->
      _.sum $scope.daily_meals, (daily) ->
        daily.noOfStudent4

    $scope.total5 = ->
      _.sum $scope.daily_meals, (daily) ->
        daily.noOfStudent5

    $scope.create = ->
      new MonthlyRecord($scope.monthly_record).create().then (response) ->
        $scope.monthly_records.push(new MonthlyRecord(response))
        $scope.alert = true
      $scope.monthly_record = {}

    $scope.reset = ->
      $scope.monthly_record = {}
]
