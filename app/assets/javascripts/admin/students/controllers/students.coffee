@students.controller 'StudentsController', [
  '$scope', '$state', 'Student', 'Admission', 'Religion', 'Caste', 'Standard', 'Division'
  ($scope, $state, Student, Admission, Religion, Caste, Standard, Division) ->
    $state.go('students.new')

    Student.get().then (students) ->
      $scope.students = students

    Admission.get().then (admissions) ->
      $scope.admissions = admissions

    Religion.get().then (religions) ->
      $scope.religions = religions

    Caste.get().then (castes) ->
      $scope.castes = castes

    Standard.get().then (standards) ->
      $scope.standards = standards

    Division.get().then (divisions) ->
      $scope.divisions = divisions
]
