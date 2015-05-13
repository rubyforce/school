@admin.controller 'HomeController', [
    '$scope', 'Student', 'Employee'
    ($scope, Student, Employee) ->

      Student.get().then (students) ->
        $scope.students = students

      Employee.get().then (employees) ->
        $scope.employees = employees
]
