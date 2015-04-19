@admissions.controller 'AdmissionsController', [
  '$scope', '$state', 'Admission'
  ($scope, $state, Admission) ->

    Admission.get().then (admissions) ->
      $scope.admissions = admissions
]
