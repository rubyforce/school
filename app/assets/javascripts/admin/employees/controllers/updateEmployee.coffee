@employees.controller 'UpdateEmployeesController', [
  '$scope', 'Employee'
  ($scope, Employee) ->

    $scope.clicked = false

    $scope.show_form = false

    $scope.alert = false

    $scope.editing = (user) ->
      $scope.currentUser = user
      $scope.show_form = true
      $scope.clicked = true

    $scope.update = ->
      $scope.currentUser.update()
      $scope.alert = true

    $scope.itemsPerPage = 5
    $scope.currentPage = 1

    $scope.pageCount = ->
      Math.ceil($scope.employees.length / $scope.itemsPerPage)
]
