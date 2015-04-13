@employees.controller 'UpdateEmployeesController', [
  '$scope', 'Employee'
  ($scope, Employee) ->

    $scope.clicked = false

    $scope.show_form = false

    $scope.editing = (user) ->
      $scope.currentUser = user
      $scope.show_form = true
      $scope.clicked = true

    $scope.update = ->
      debugger
      Employee.get($scope.currentUser).then (response) ->
        $scope.currentUser.update()
]
