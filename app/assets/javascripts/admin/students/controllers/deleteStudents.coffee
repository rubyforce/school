@students.controller 'DeleteStudentsController', [
  '$scope', 'Student'
  ($scope, Student) ->
    $scope.alert = false
    $scope.clicked = true
    $scope.deleting = (user) ->
      $scope.currentUser = user
      $scope.clicked = false

    $scope.remove = ->
      $scope.currentUser.delete().then (student) ->
        $scope.alert = true

      index = _.indexOf($scope.students, $scope.currentUser)
      $scope.students.splice(index, 1)
]
