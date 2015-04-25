@fees_heads.controller 'FeesHeadsController', [
  '$scope', '$state', 'FeesHead', 'Student', 'Division', 'Standard'
  ($scope, $state, FeesHead, Student, Division, Standard) ->
    $state.go('fees_heads.head')

    Student.get().then (students) ->
      $scope.students = students

    Division.get().then (divisions) ->
      $scope.divisions = divisions

    Standard.get().then (standards) ->
      $scope.standards = standards

    FeesHead.get().then (fees_heads) ->
      $scope.fees_heads = fees_heads
]
