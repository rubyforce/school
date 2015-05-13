@admin.controller 'HomeController', [
    '$scope', 'Student', 'Employee', 'MiddayManagement'
    ($scope, Student, Employee, MiddayManagement) ->

      Student.get().then (students) ->
        $scope.students = students

      Employee.get().then (employees) ->
        $scope.employees = employees

      MiddayManagement.get().then (midday_managements) ->
        $scope.midday_managements = midday_managements
]
