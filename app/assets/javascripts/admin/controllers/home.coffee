@admin.controller 'HomeController', [
    '$scope', 'Student', 'Employee', 'MiddayManagement', '$http'
    ($scope, Student, Employee, MiddayManagement, $http) ->

      Student.get().then (students) ->
        $scope.students = students

      Employee.get().then (employees) ->
        $scope.employees = employees

      MiddayManagement.get().then (midday_managements) ->
        $scope.midday_managements = midday_managements

      $http.get('/admin/dashboards').success( (response) ->
        debugger
        $scope.dashboard = response 
      )

]
