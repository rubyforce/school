@admin.controller 'HomeController', [
    '$scope', 'Student', 'Employee', '$http'
    ($scope, Student, Employee, $http) ->

      Student.get().then (students) ->
        $scope.students = students

      Employee.get().then (employees) ->
        $scope.employees = employees

      $http.get('/admin/dashboards').success( (response) ->
        $scope.dashboard = response 
      )

]
