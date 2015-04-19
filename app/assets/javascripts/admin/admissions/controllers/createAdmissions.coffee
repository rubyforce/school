@admissions.controller 'CreateAdmissionsController', [
  '$scope', 'Admission'
  ($scope, Admission) ->
    $scope.create = ->
      new Admission($scope.admission).create().then (response) ->
        $scope.admissions.push(new Admission(response))
        $scope.admission = build()
]
