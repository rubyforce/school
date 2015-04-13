@students.controller 'CreateStudentsController', [
    '$scope', 'Student'
    ($scope, Student) ->
        DEFAULT_STUDENT =
            entry_no: 'auto'

        build = -> _.clone(DEFAULT_STUDENT)

        $scope.student = build()

        $scope.create = ->
            new Student($scope.student).create().then (response) ->
                $scope.students.push(new Student(response))
                $scope.student = build()
]
