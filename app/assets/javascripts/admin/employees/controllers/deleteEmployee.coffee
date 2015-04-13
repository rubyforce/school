@employees.controller 'DeleteEmployeesController', [
  '$scope', 'Employee'
  ($scope, Employee) ->

    $scope.deleting = (user) ->
      $scope.currentUser = user

    $scope.remove = (employee)->
      debugger
      index = _.indexOf($scope.employees, employee)
      $scope.employees.splice(index, 1)
      $scope.currentUser.delete()
]
