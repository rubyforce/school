@employees.controller 'DeleteEmployeesController', [
  '$scope', 'Employee'
  ($scope, Employee) ->
    $scope.alert = false
    $scope.deleting = (user) ->
      $scope.currentUser = user

    $scope.remove = (employee)->
      $scope.currentUser.delete().then (response) ->
      index = _.indexOf($scope.employees, employee)
      $scope.employees.splice(index, 1)
      $scope.alert = true
]
