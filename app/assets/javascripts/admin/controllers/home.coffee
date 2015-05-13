@admin.controller 'HomeController', [
    '$scope', 'Student'
    ($scope, Student) ->

      Student.get().then (students) ->
        $scope.students = students
]
