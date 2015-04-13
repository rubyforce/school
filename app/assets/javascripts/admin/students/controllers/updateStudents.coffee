@students.controller 'UpdateStudentsController', [
  '$scope', 'Student'
  ($scope, Student) ->

    $scope.clicked = false

    $scope.show_form = false

    $scope.editing = (user) ->
      $scope.currentUser = user
      $scope.show_form = true
      $scope.clicked = true

    $scope.update = ->
      $scope.currentUser.update()
]
