@employees.controller 'DeleteEmployeesController', [
  '$scope', 'Employee'
  ($scope, Employee) ->

    $scope.deleting = (user) ->
      debugger
      $scope.currentUser = user

    $scope.remove = ->
      $scope.currentUser.delete()
]
