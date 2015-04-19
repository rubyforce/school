@students.controller 'CreateStudentsController', [
  '$scope', 'Student', 'Admission'
  ($scope, Student) ->
    DEFAULT_STUDENT =
      entry_no: 'auto'
      academic_year: 'auto'

    build = -> _.clone(DEFAULT_STUDENT)

    $scope.student = build()

    $scope.alert = false

    $scope.create = ->
      new Student($scope.student).create().then (response) ->
        $scope.students.push(new Student(response))
        $scope.student = build()
        $scope.alert = true
]
