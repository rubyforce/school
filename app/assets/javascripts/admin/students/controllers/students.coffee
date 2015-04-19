@students.controller 'StudentsController', [
    '$scope', '$state', 'Student'
    ($scope, $state, Student) ->
        $state.go('students.new')

        Student.get().then (students) ->
            $scope.students = students
]
