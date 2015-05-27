@midday_managements.controller 'CreateMonthlyRecordsController', [
  '$scope', 'MonthlyRecord'
  ($scope, MonthlyRecord) ->
    $scope.alert = false

    $scope.create = ->
      new MonthlyRecord($scope.monthly_record).create().then (response) ->
        $scope.monthly_records.push(new MonthlyRecord(response))
        $scope.alert = true
      $scope.monthly_record = {}

    $scope.reset = ->
      $scope.monthly_record = {}
]
