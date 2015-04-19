@students.controller 'StudentsController', [
    '$scope', '$state', 'Student', 'Admission'
    ($scope, $state, Student) ->
        $state.go('students.new')

        Student.get().then (students) ->
            $scope.students = students
]
