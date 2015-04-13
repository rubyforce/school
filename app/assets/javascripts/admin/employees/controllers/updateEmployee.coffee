@employees.controller 'UpdateEmployeesController', [
  '$scope', 'Employee'
  ($scope, Employee) ->

    $scope.show_form = false

    $scope.editing = (user) ->
      debugger
      $scope.currentUser = user
      $scope.show_form = true

    $scope.update = ->
      new Employee($scope.employee).update().then (response) ->
        $scope.employees.push(new Employee(response))
]
