@employees.controller 'DeleteEmployeesController', [
  '$scope', 'Employee'
  ($scope, Employee) ->
    $scope.alert = false
    $scope.clicked = true
    $scope.deleting = (user) ->
      $scope.currentUser = user
      $scope.clicked = false

    $scope.remove = ->
      $scope.currentUser.delete().then (employee) ->
        index = _.indexOf($scope.employees, employee)
        $scope.employees.splice(index, 1)
        $scope.alert = true

    $scope.itemsPerPage = 5
    $scope.currentPage = 1

    $scope.pageCount = ->
      Math.ceil($scope.employees.length / $scope.itemsPerPage)
]
