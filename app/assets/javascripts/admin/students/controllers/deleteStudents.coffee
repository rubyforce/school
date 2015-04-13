@students.controller 'DeleteStudentsController', [
  '$scope', 'Student'
  ($scope, Student) ->
    $scope.alert = false
    $scope.clicked = true
    $scope.deleting = (user) ->
      $scope.currentUser = user
      $scope.clicked = false

    $scope.remove = ()->
      debugger
      $scope.currentUser.delete().then (student) ->
        index = _.indexOf($scope.students, student)
        $scope.students.splice(index, 1)
        $scope.alert = true
]
