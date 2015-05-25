@admin.controller 'HomeController', [
    '$scope', 'Student', 'Employee', 'MiddayManagement', '$http', 'PaidType'
    ($scope, Student, Employee, MiddayManagement, $http, PaidType) ->

      Student.get().then (students) ->
        $scope.students = students

      Employee.get().then (employees) ->
        $scope.employees = employees

      $http.get('/admin/dashboards').success( (response) ->
        $scope.dashboard = response 
      )

]
