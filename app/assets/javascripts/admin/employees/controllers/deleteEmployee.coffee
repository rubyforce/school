@employees.controller 'DeleteEmployeesController', [
  '$scope', 'Employee'
  ($scope, Employee) ->
    $scope.alert = false
    $scope.clicked = true
    $scope.deleting = (user) ->
      $scope.currentUser = user
      $scope.clicked = false

    $scope.remove = ()->
      debugger
      $scope.currentUser.delete().then (employee) ->
        index = _.indexOf($scope.employees, employee)
        $scope.employees.splice(index, 1)
        $scope.alert = true
]
