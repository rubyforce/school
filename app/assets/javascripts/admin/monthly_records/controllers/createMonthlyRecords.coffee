@monthly_records.controller 'CreateMonthlyRecordsController', [
  '$scope', 'MonthlyRecord'
  ($scope, MonthlyRecord) ->

    $scope.months = ["January", "February", "March", "April", "May", "June",
              "July", "August", "September", "October", "November", "December"]

    $scope.add = ->
      new MonthlyRecord($scope.monthly_record).create().then (response) ->
        $scope.monthly_records.push(new MonthlyRecord(response))
      $scope.monthly_record = {}

    $scope.reset = ->
      $scope.monthly_record = {}
]
